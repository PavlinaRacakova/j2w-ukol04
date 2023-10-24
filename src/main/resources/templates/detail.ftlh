[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include "_common/head.ftlh"]
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
                <div><i class="bi bi-at"></i>${(businessCard.email())!userDidntProvideParameterMessage}</div>
                <div><i class="bi bi-phone"></i>${(businessCard.cellPhone())!userDidntProvideParameterMessage}</div>
                <div><i class="bi bi-globe"></i>${(businessCard.web())!userDidntProvideParameterMessage}</div>
            </div>
        </div>
    </div>

    <div class="mapa">
        <iframe style="border:none" src="https://frame.mapy.cz/?q=${businessCard.getCompleteAddress()?url}" width="100%"
                height="100%" frameborder="0"></iframe>
    </div>

    <nav>
        <a href="/">◂ Back</a>
        <a href="/edit/${businessCardId}">✎ Edit</a>
    </nav>
</div>
</body>
</html>
