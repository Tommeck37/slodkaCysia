package pl.slodkacysia.model;

import javax.persistence.*;
import java.util.List;

@Entity
public class Cart {
    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @OneToMany
    private List<CartItem> cartItems;
    @OneToOne
    private Customer  customer;

    public List<CartItem> getCartItems() {
        return cartItems;
    }

    public void setCartItems(List<CartItem> cartItems) {
        this.cartItems = cartItems;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public double getGrandTotal() {
        return grandTotal;
    }

    public void setGrandTotal(double grandTotal) {
        this.grandTotal = grandTotal;
    }

    private double grandTotal;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
