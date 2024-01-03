import javax.swing.JOptionPane;

public class App{
    public static void main(String[] args) throws Exception {
        String name = JOptionPane.showInputDialog("Enter Your name");
        JOptionPane.showMessageDialog(null, "Hello "+ name);
    }
}