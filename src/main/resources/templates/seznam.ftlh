[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include "_common/head.ftlh"]
</head>
<body>
<div class="seznam">
    [#list businessCardList as businessCard]
    <a href="/detail/${businessCard?index}">
        <div class="vizitka">
            <div class="jmeno">${businessCard.name()}</div>
            <div class="firma">${businessCard.company()}</div>
            <div class="udaje">
                <div class="adresa">
                    <div>${businessCard.street()}</div>
                    <div>${businessCard.townAndZipCode()}</div>
                </div>
                <div class="kontakty">
                    <div><i class="bi bi-at"></i> ${(businessCard.email())!userDidntProvideParameterMessage}</div>
                    <div><i class="bi bi-phone"></i> ${(businessCard.cellPhone())!userDidntProvideParameterMessage}</div>
                    <div><i class="bi bi-globe"></i> ${(businessCard.web())!userDidntProvideParameterMessage}</div>
                </div>
            </div>
        </div>
    </a>
    [/#list]

    <a href="/new">
        <div class="vizitka vizitka--nova">
            <svg width="100" height="100">
                <rect width="20" height="100" x="40" y="0" fill="white" />
                <rect width="100" height="20" x="0" y="40" fill="white" />
            </svg>
        </div>
    </a>
</div>
</body>
</html>
