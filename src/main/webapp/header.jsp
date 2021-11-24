<header>
    <!-- Banner -->
    <div id="banner" class="d-flex flex-column justify-content-evenly align-items-center">
        <h1 class="text-center">PhoneStore</h1>
        <img id="logo" src="images/logo.png" alt="logo" />
    </div>

    <!-- Navigation bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-xxl">
            <!-- Menu button -->
            <button class="navbar-toggler border-0 me-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-collapse" aria-controls="navbar-collapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Navigation lists -->

            <ul class="navbar-nav flex-row order-md-last">
                <li class="nav-item">
                    <a class="nav-link px-3" href="#" title="Cart"><i class="fas fa-shopping-cart"></i><span class="d-none d-xl-inline">&nbsp;Cart</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link px-3" href="#" title="Sign up"><i class="fas fa-user-plus"></i><span class="d-none d-xl-inline">&nbsp;Sign up</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link px-3" href="login.jsp" title="Log in"><i class="fas fa-sign-in-alt"></i><span class="d-none d-xl-inline">&nbsp;Log in</span></a>
                </li>
            </ul>

            <div id="navbar-collapse" class="collapse navbar-collapse order-md-last order-lg-first">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link px-3 px-lg-2 px-xl-3 active" href="./">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link px-3 px-lg-2 px-xl-3" href="#">Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link px-3 px-lg-2 px-xl-3" href="#">About us</a>
                    </li>
                </ul>
            </div>

            <!-- Search bar -->
            <form id="search-form" class="mt-3 mt-md-0">
                <div class="input-group">
                    <input class="form-control bg-light border-0 shadow-none" type="search" placeholder="What are you looking for?" aria-label="Search" />
                    <button class="btn bg-light border-0 shadow-none" type="submit" title="Search"><i class="fas fa-search"></i></button>
                </div>
            </form>
        </div>
    </nav>
</header>
