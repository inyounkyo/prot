package in.moduler.practice.tx.model;

import java.io.Serializable;

public class Testing implements Serializable{

    private Integer id;
    private String name;
    private String address;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    // other setter and getter

    public Testing() {
    }

    public Testing(String name, String address) {
        this.name = name;
        this.address = address;
    }
}
