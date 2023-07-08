package Model;

public class Product {
    private int productId;
    private String productName;
    private int minSellQuantity;
    private int prize;
    private int quantity;

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getMinSellQuantity() {
        return minSellQuantity;
    }

    public void setMinSellQuantity(int minSellQuantity) {
        this.minSellQuantity = minSellQuantity;
    }

    public int getPrize() {
        return prize;
    }

    public void setPrize(int prize) {
        this.prize = prize;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
