package ch17.sec04.exam01;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Product {
    private int pno;
    private  String name;
    private String company;
    private  int price;

    public Product(int pno, String name, String company, int price) {
        this.pno = pno;
        this.name = name;
        this.company = company;
        this.price = price;
    }

    @Override
    public String toString() {
        return new StringBuilder()
                .append("{")
                .append("pno:" + pno + ", ")
                .append("name:" + name + ", ")
                .append("company:" + company + ", ")
                .append("price:" + price)
                .append("}")
                .toString();
    }
}
