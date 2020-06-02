window.onload = () => {
    document.getElementById("choix_categorie").addEventListener("change", () => {
        let table = document.getElementById("display_table");
        document.getElementsByTagName("tbody")[0].remove();
        let tbody = document.createElement("tbody");
        let select = document.getElementById("choix_categorie");
        let choix = select.options[select.selectedIndex].value;

    });
}
