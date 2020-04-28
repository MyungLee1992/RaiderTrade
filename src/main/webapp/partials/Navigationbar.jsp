<nav class="navbar navbar-expand-md navbar-light bg-light rounded stick-top">
  <div class="container-fluid">
    <a href="../" class="navbar-brand"
      ><img class="logo" src="/img/logo.png" alt=""
    /></a>
    <button
      class="navbar-toggler custom-toggler"
      type="button"
      data-toggle="collapse"
      data-target="#navbarToggleExternalContent"
      aria-controls="navbarToggleExternalContent"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse">
      <ul class="navbar-nav ml-auto">
        <a href="#" class="nav-link" style="color: black !important;">
          ${registerSuccessMsg} ${userForm.firstName}
        </a>
        <li class="nav-item">
          <a href="/signup" class="nav-link">Sign Up</a>
        </li>
        <li class="nav-item">
          <a href="/signin" class="nav-link">Sign In</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<div class="collapse" id="navbarToggleExternalContent">
  <div class="bg-custom p-4 rounded">
    <h5 class="text-dark h4 text-center">Welcome to RaiderTrade</h5>
    <nav class="text-center">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a href="/signin" class="nav-link">Sign In</a>
        </li>
      </ul>
    </nav>
  </div>
</div>
