// open and clod=se cart item
const cart = document.querySelector(".cart");
const show_categories = document.querySelector(".showcategories");
const categoryList = document.querySelector(".leftmune");


function openCart(){
    cart.classList.add("active");
}

function closeCart(){
    cart.classList.remove("active")
}


// open and clos popup of categories

show_categories.addEventListener("click", function(event){
    event.preventDefault();
    if(categoryList.style.display === "none"){
        categoryList.style.display = "block";
        show_categories.classList.add("active");
    }else{
        categoryList.style.display = "none";
        show_categories.classList.remove("active");
    };
});

let total = 0;
let pric_cart_total = document.getElementsByClassName("pric_cart_total")[0];
let dissquantity = document.querySelectorAll(".dishcunt");
let dishcartprice = document.querySelectorAll(".dishcartprice");
let price_cart_head = document.getElementsByClassName("price_cart_head")[0];

// // Function to calculate the total price
function calculatetotalPrice(){
    total = 0;
    dishcartprice.forEach((element, index) => {
        let price = Number(element.getAttribute("data-value"));
        let quantity = Number(dissquantity[index].value) || 1;
        total += price * quantity;
    });
    pric_cart_total.textContent = total.toFixed(2);
    price_cart_head.textContent = total.toFixed(2) + "$";
}

// // Function to update the total price when quantity changes

dissquantity.forEach((item, index) => {
    item.addEventListener("change", calculatetotalPrice);

    calculatetotalPrice();
});

