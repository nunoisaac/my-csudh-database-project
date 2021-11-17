import java.awt.*;
import java.sql.*;
import javax.swing.*;
import javax.swing.border.Border;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class DatabaseGUI extends JFrame {
    private JPanel topPanel = new JPanel();
    private JPanel leftPanel = new JPanel();
    private JPanel rightPanel = new JPanel();
    private JPanel midPanel = new JPanel();
    private JPanel bottomPanel = new JPanel();
    private JLabel label = new JLabel("Enter Order Number: ");
    private JButton enterButton = new JButton("Enter");
    private JTextField orderEntered = new JTextField();
    private JTextArea customerInfo = new JTextArea();



    public DatabaseGUI(String title){
        super(title);
        this.getContentPane().setBackground(Color.WHITE);
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.pack();
        this.setLayout(new BorderLayout());
        this.setVisible(true);
        this.setSize(1200,500);

        //info Label:
        label.setForeground(new Color(255,255,255));
        label.setFont(new Font("Arial", Font.BOLD, 20));
        label.setVerticalAlignment(JLabel.BOTTOM);
        label.setHorizontalAlignment(JLabel.LEFT);
        label.setBounds(20, 10,400,20);


        //invoice label
        JLabel invoice = new JLabel("Invoice");
        invoice.setVerticalAlignment(JLabel.TOP);
        invoice.setHorizontalAlignment(JLabel.LEFT);
        invoice.setFont(new Font("Arial", Font.PLAIN, 14));
        invoice.setForeground(Color.black);
        invoice.setBounds(20, 10,400,50);


        //Panels
        topPanel.setBackground(new Color(234,105,0));
        leftPanel.setBackground(new Color(234,105,0));
        rightPanel.setBackground(new Color(234,105,0));
        bottomPanel.setBackground(new Color(234,105,0));
        midPanel.setBackground(new Color(255,255,255));


        topPanel.setPreferredSize(new Dimension(100,25));
        leftPanel.setPreferredSize(new Dimension(20,100));
        midPanel.setPreferredSize(new Dimension(100,100));
        rightPanel.setPreferredSize(new Dimension(20,100));
        bottomPanel.setPreferredSize(new Dimension(100,60));

        topPanel.setLayout(null);
        leftPanel.setLayout(null);
        midPanel.setLayout(new FlowLayout());
        rightPanel.setLayout(null);
        bottomPanel.setLayout(new FlowLayout());

        this.add(topPanel, BorderLayout.NORTH);
        this.add(leftPanel, BorderLayout.WEST);
        this.add(midPanel, BorderLayout.CENTER);
        this.add(rightPanel,BorderLayout.EAST);
        this.add(bottomPanel, BorderLayout.SOUTH);


        //textField
        orderEntered.setPreferredSize(new Dimension(500,20));

        //textArea
        customerInfo.setBounds(0,0,5000,5000);
        customerInfo.setFont(new Font("Courier New",Font.PLAIN, 16));
        customerInfo.setEditable(false);

        topPanel.add(invoice);
        midPanel.add(customerInfo);
        bottomPanel.add(label);
        bottomPanel.add(orderEntered);
        bottomPanel.add(enterButton);




        enterButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

                Connection conn = null;
                try
                {
                    String order = orderEntered.getText();
                    String userName = "root";
                    String password = "@Wildaskme!1";
                    String url = "jdbc:MySQL://localhost/electronic_store";
                    conn = DriverManager.getConnection(url,userName,password);
                    Statement stmt=conn.createStatement();

                    StringBuilder temp = new StringBuilder();
                    temp.append("Order Number: ").append(order).append("\n\n\n");

                    //Customer name and address:
                    temp.append("Customer Name and Address:\n\n");
                    ResultSet rs1=stmt.executeQuery("SELECT c.customerfirstname, c.customerlastname\n" +
                            "FROM orders AS o, customer AS c\n" +
                            "WHERE o.customerID = c.customerID\n" +
                            "AND o.orderID = "+order+";");
                    while(rs1.next())
                        temp.append(rs1.getString(1)).append("   ").append(rs1.getString(2)).append("\n");

                    ResultSet rs2=stmt.executeQuery("SELECT c.customerAddress, c.customerCity, c.customerState, c.customerPostalCode\n" +
                            "FROM orders AS o, customer AS c\n" +
                            "WHERE o.customerID = c.customerID\n" +
                            "AND o.orderID = "+order+";");
                    while(rs2.next())
                        temp.append(rs2.getString(1)).append("\n").append(rs2.getString(2)).append(" "+rs2.getString(3)).append(" "+rs2.getString(4));


                    ResultSet rs=stmt.executeQuery("SELECT i.ProductID, i.Description, op.Qty, (op.Qty*i.Price) as Total\n" +
                            "FROM  orderProcessing AS op, inventory AS i, orders AS o\n" +
                            "WHERE op.OrderID = o.OrderID\n" +
                            "AND op.ProductID = i.ProductID\n" +
                            "AND op.OrderID = "+order+";");

                    temp.append(String.format("\n\n\n%-10s || %-40s || %-4s || %-20s \n", "ProductID", "Description","Qty", "Total"));
                    temp.append("--------------------------------------------------------------------------------------------------\n");
                    while(rs.next())
                        temp .append(String.format("%-10s || %-40s || %-4s || %-20s \n",
                                rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)));

                    ResultSet rs3=stmt.executeQuery("SELECT sum(op.Qty*i.Price) as InvoiceTotal\n" +
                            "FROM  orderProcessing AS op, inventory AS i, orders AS o\n" +
                            "WHERE op.OrderID = o.OrderID\n" +
                            "AND op.ProductID = i.ProductID\n" +
                            "AND op.OrderID = "+order+";");

                    temp.append("--------------------------------------------------------------------------------------------------\n");
                    temp.append(String.format("%-66s","Invoice Total: "));
                    while(rs3.next())
                        temp.append(rs3.getString(1));



                    conn.close();
                    customerInfo.setText(temp.toString());
                    System.out.println(temp.toString());
                }
                catch (Exception ex)
                {
                    System.err.println ("Cannot connect to database server");
                    ex.printStackTrace();
                }

            }

        });
    }

    public static void main(String[] arg){

        JFrame frame = new DatabaseGUI("Invoice");

    }
}