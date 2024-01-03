function old(){
    let name_tag = document.createElement("h1");
    //name_tag.innerHTML = "Josee and the tiger fish";
    name_tag.textContent = window.prompt("Enter Text");

    document.body.append(name_tag);
    console.log("still same");
}
old();

const my_list = document.querySelector("#fruit");
const list_item = document.createElement("li");
list_item.textContent = "mango";

//my_list.prepend(list_item);
my_list.insertBefore(list_item ,my_list.getElementsByTagName("li")[2]);

