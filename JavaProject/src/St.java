import java.sql.*;

import javax.swing.*;

import java.awt.*;
import java.lang.Object;
import java.io.Serializable;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.Arrays;

import oracle.jdbc.driver.OracleConnection;
import oracle.spatial.geometry.JGeometry;
import oracle.sql.STRUCT;

import java.awt.Canvas;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Shape;
import java.awt.geom.Ellipse2D;
import java.awt.geom.GeneralPath;
import java.awt.geom.Line2D;
import java.awt.geom.Rectangle2D;
import java.awt.geom.RoundRectangle2D;

import javax.swing.JFrame;

import java.awt.*;
import java.awt.geom.*;
import java.awt.event.*;
import java.awt.image.*;
import java.sql.*;

import javax.swing.*;
import javax.swing.event.*;

import java.util.*;

import oracle.jdbc.OracleDriver;
import oracle.sdovis.*;
import oracle.sdovis.style.*;
import oracle.sdovis.util.*;
import oracle.spatial.geometry.JGeometry;
import oracle.sql.STRUCT;

public class St extends JFrame {
	static JGeometry j_geom = null;
	static Connection conn = null;
	Shape shapes[] = new Shape[5];
	Shape temp_shape;
	Shape clicked_shape;
	static JGeometry clicked_geom = null;
	

	public static ArrayList<JGeometry> shapes_region = new ArrayList<JGeometry>();
	public static ArrayList<JGeometry> shapes_lion = new ArrayList<JGeometry>();
	public static ArrayList<JGeometry> shapes_pond = new ArrayList<JGeometry>();
	JCheckBox checkbox = new JCheckBox(
			"Show lions and ponds in the selected region");

	public static void main(String[] args) {

		String url = null;
		String id = "system";
		String pw = "12345";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("driver load success");

			try {
				url = "jdbc:oracle:thin:@localhost:1521:XE";
				conn = DriverManager.getConnection(url, id, pw);
				System.out.println("db connect success");

				Statement sta = null;
				sta = conn.createStatement();

				// region
				String query = "select * from region";
				sta = conn.createStatement();
				ResultSet rs = sta.executeQuery(query);
				while (rs.next()) {
					STRUCT st = (oracle.sql.STRUCT) rs.getObject("shape");
					j_geom = JGeometry.load(st);
					shapes_region.add(j_geom);
				}
				rs.close();
				sta.close();

				// lion
				query = "select * from lion";
				sta = conn.createStatement();
				rs = sta.executeQuery(query);
				while (rs.next()) {

					STRUCT st = (oracle.sql.STRUCT) rs.getObject("shape");
					j_geom = JGeometry.load(st);
					shapes_lion.add(j_geom);
				}
				rs.close();
				sta.close();

				// pond
				query = "select * from pond";
				sta = conn.createStatement();
				rs = sta.executeQuery(query);
				while (rs.next()) {
					STRUCT st = (oracle.sql.STRUCT) rs.getObject("shape");
					j_geom = JGeometry.load(st);
					shapes_pond.add(j_geom);
				}
				rs.close();
				sta.close();

				conn.close();

			} catch (SQLException e) {
				System.out.println(e);
			}
		} catch (ClassNotFoundException e) {
			System.out.println(e);

		}

		new St();
	}

	public St() {
		add("Center", new MyCanvas());
		add("North", checkbox);
		
		setSize(600, 600);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setVisible(true);
	}

	class MyCanvas extends Canvas implements MouseListener {
		public MyCanvas() {

			// mouse listener
			addMouseListener(this);

			// checkbox listener
			checkbox.addActionListener(new ActionListener() {
				@Override
				public void actionPerformed(ActionEvent e) {
					if (checkbox.isSelected() == true)
						System.out.println("true");
					else {
						repaint();
						System.out.println("false");
					}

				}
			});

		}

		@Override
		public void mouseClicked(MouseEvent e) {
			for (int i = 0; i < shapes_region.size(); i++) {
				temp_shape = shapes_region.get(i).createShape();

				if (temp_shape.contains(e.getPoint())) {
					clicked_geom = shapes_region.get(i);
					System.out.println("temp_shape " + i);
					repaint();
					break;

				}
			}
		}

		@Override
		public void mousePressed(MouseEvent e) {
		}

		@Override
		public void mouseReleased(MouseEvent e) {
		}

		@Override
		public void mouseEntered(MouseEvent e) {
		}

		@Override
		public void mouseExited(MouseEvent e) {
		}

		
		public void paint(Graphics graphics) {
			Graphics2D g = (Graphics2D) graphics;

			// region
			for (int i = 0; i < shapes_region.size(); ++i) {
				if (shapes_region.get(i) != null) {

				
					g.setColor(Color.WHITE);
					g.fill(shapes_region.get(i).createShape());

					g.setStroke(new BasicStroke(3));
					g.setColor(Color.BLACK);
					g.draw(shapes_region.get(i).createShape());
				}
			}

			// lion
			for (int i = 0; i < shapes_lion.size(); ++i) {
				if (shapes_lion.get(i) != null) {

					temp_shape = new Ellipse2D.Double(shapes_lion.get(i)
							.getFirstPoint()[0], shapes_lion.get(i)
							.getFirstPoint()[1], 4, 4);
			
					g.setColor(Color.green);
					g.fill(temp_shape);

					g.setStroke(new BasicStroke(5));
					g.setColor(Color.green);
					g.draw(temp_shape);

					if (clicked_geom != null && checkbox.isSelected() == true) {
						if (clicked_geom.createShape().contains(
								shapes_lion.get(i).getFirstPoint()[0],
								shapes_lion.get(i).getFirstPoint()[1])) {
							temp_shape = new Ellipse2D.Double(shapes_lion
									.get(i).getFirstPoint()[0], shapes_lion
									.get(i).getFirstPoint()[1], 4, 4);
					
							g.setColor(Color.red);
							g.fill(temp_shape);

							g.setStroke(new BasicStroke(5));
							g.setColor(Color.red);
							g.draw(temp_shape);
						}

					}

				}
			}

			// pond
			for (int i = 0; i < shapes_pond.size(); ++i) {
				if (shapes_pond.get(i) != null) {
			
					g.setColor(Color.blue);
					g.fill(shapes_pond.get(i).createShape());

					g.setStroke(new BasicStroke(1));
					g.setColor(Color.black);
					g.draw(shapes_pond.get(i).createShape());

					if (clicked_geom != null && checkbox.isSelected() == true) {
						if (clicked_geom.createShape().contains(
								shapes_pond.get(i).getFirstPoint()[0],
								shapes_pond.get(i).getFirstPoint()[1])) {
							g.setColor(Color.red);
							g.fill(shapes_pond.get(i).createShape());

							g.setStroke(new BasicStroke(1));
							g.setColor(Color.black);
							g.draw(shapes_pond.get(i).createShape());
						}
					}

				}
			}

		}
	}

}
