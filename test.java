// import java.util.HashSet;
import java.util.HashMap;
public class test{
    public static void main(String[] args) {
        // HashSet<String> hashSet = new HashSet<>();
        // hashSet.add("Hello");
        // hashSet.add("b");
        // // hashSet.add();
        
        // System.out.println(hashSet.hashCode());
        // // System.out.println(hashSet.contains(35));

        HashMap<String, Integer> map = new HashMap<>();
        map.put("iphone",23);
        int phone = map.get("iphone");
        System.out.println(phone);
        System.out.println(map.hashCode());
	System.out.println("hello\n");

    }
}
