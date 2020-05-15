const checkContractor = document.querySelector("#user_contractor");
  checkContractor.addEventListener('click', (event) => {
  const form = document.querySelector(".sign-up-form-fields");
  form.insertAdjacentHTML("beforeend",
    `<div class="form-group string optional user_contractor_name">
      <label class="string optional" for="user_contractor_name">
        Nombre de compañia
      </label>
      <input class="form-control string optional" type="text" name="user[contractor_name]" id="user_contractor_name">
    </div>
    <div class="form-group text optional user_bio">
      <label class="text optional" for="user_bio">Bio</label>
      <textarea class="form-control text optional" autocomplete="bio" name="user[bio]" id="user_bio"></textarea>
    </div>`
  );
});
