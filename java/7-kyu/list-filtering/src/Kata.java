import java.util.List;
import java.util.stream.Collectors;

public class Kata {
    
    public static List filterList(final List list) {
        return (List) list.stream().filter(o -> o.getClass().equals(Integer.class)).collect(Collectors.toList());
    }
}
