[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include "_common/head.ftlh"]
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<div class="detail">
    <div class="vizitka">
        <div class="jmeno">${businessCard.name()}</div>
        <div class="firma">${businessCard.company()}</div>
        <div class="udaje">
            <div class="adresa">
                <div>${businessCard.street()}</div>
                <div>${businessCard.townAndZipCode()}</div>
            </div>
            <div class="kontakty">
                <div><i class="bi bi-at"></i> ${businessCard.email()!userDidntProvideParameterMessage}</div>
                <div><i class="bi bi-phone"></i> ${businessCard.cellPhone()!userDidntProvideParameterMessage}</div>
                <div><i class="bi bi-globe"></i> ${businessCard.web()!userDidntProvideParameterMessage}</div>
            </div>
        </div>
    </div>

    <div class="mapa">
        <iframe style="border:none" src="https://frame.mapy.cz/?q=${businessCard.getCompleteAddress()?url}" width="100%"
                height="100%" frameborder="0"></iframe>
    </div>

    <nav>
        <form action="/" style="display: inline-block; margin-right: 10px;">
            <input type="submit" class="btn btn-success" value="🡨 Back" />
        </form>
        <form action="/edit/${businessCardId}" style="display: inline-block; margin-right: 10px;">
            <input type="submit" class="btn btn-success" value="️🖊 Edit" />
        </form>
        <form method="post" action="/delete">
            <input type="hidden" name="id" value="${businessCardId}" />
            <button type="submit" class="btn btn-success">⌫ Delete</button>
        </form>
    </nav>
</div>
</body>
</html>
