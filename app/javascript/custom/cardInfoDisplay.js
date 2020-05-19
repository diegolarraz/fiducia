const hidden1 = document.querySelector("#enquiries > div > div.contractor-enquiry-card-info.hidden")
const hidden2 = document.querySelector("#jobs > div > div.hidden")
const hoverable1 = document.querySelector("#enquiries > div > div.hoverable.d-flex")
const hoverable2 = document.querySelector("#jobs > div > div.hoverable.d-flex")

if (hoverable1) {
    hoverable1.addEventListener('mouseover', (event) => {
      hoverable1.style.flex = 0;
      hoverable1.children[0].style.display = "none"
      hoverable1.children[1].style.display = "none"
      hoverable1.children[2].style.display = "none"
      hidden1.style.display = "block";
    });
};

if (hoverable1) {
    hidden1.addEventListener('mouseout', (event) => {
      hoverable1.style.flex = 3;
      hoverable1.children[0].style.display = "block"
      hoverable1.children[1].style.display = "block"
      hoverable1.children[2].style.display = "block"
      hidden1.style.display = "none";
    });
};

if (hoverable2) {
    hoverable2.addEventListener('mouseover', (event) => {
      hoverable2.style.flex = 0;
      hoverable2.children[0].style.display = "none"
      hoverable2.children[1].style.display = "none"
      hoverable2.children[2].style.display = "none"
      hidden2.style.display = "block";
    });
};

if (hoverable2) {
    hidden2.addEventListener('mouseout', (event) => {
      hoverable2.style.flex = 3;
      hoverable2.children[0].style.display = "block"
      hoverable2.children[1].style.display = "block"
      hoverable2.children[2].style.display = "block"
      hidden2.style.display = "none";
    });
};
