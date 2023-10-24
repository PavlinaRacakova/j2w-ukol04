[#ftl]
<!DOCTYPE html>
<html lang="en">
<head>
    [#include "_common/head.ftlh"]
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>
<body>
<div class="main-form">

    <div class="form-icon">
        <i class="las la-user-edit"></i>
    </div>

    <form class="row g-3" method="post" action="/edit/${businessCardId}">
        <div class="col-md-6">
            <input type="text" class="form-control" name="name" id="name" placeholder="Name" value="${businessCard.name()!}" required>
        </div>
        <div class="col-md-6">
            <input type="text" class="form-control" name="company" id="company" placeholder="Company" value="${businessCard.company()!}" required>
        </div>
        <div class="col-md-6">
            <input type="text" class="form-control" name="street" id="street" placeholder="Street" value="${businessCard.street()!}" required>
        </div>
        <div class="col-md-6">
            <input type="text" class="form-control" name="townAndZipCode" id="townAndZipCode"
                   placeholder="Town and Zip Code" value="${businessCard.townAndZipCode()!}" required>
        </div>
        <div class="col-md-6">
            <input type="text" class="form-control" name="email" id="email" placeholder="E-mail" value="${businessCard.email()!}">
        </div>
        <div class="col-md-6">
            <input type="text" class="form-control" name="cellPhone" id="cellPhone" placeholder="Cell Phone" value="${businessCard.cellPhone()!}">
        </div>
        <div class="col-md-6">
            <input type="text" class="form-control" name="web" id="web" placeholder="Web" value="${businessCard.web()!}">
        </div>
        <div class="col-12">
            <button type="submit" class="btn btn-outline-success">Edit business card</button>
        </div>
    </form>

</div>
</body>
</html>