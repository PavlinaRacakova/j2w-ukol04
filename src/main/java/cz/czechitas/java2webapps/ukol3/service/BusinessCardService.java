package cz.czechitas.java2webapps.ukol3.service;

import cz.czechitas.java2webapps.ukol3.entity.BusinessCard;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class BusinessCardService {
    private final List<BusinessCard> businessCardList = new ArrayList<>();
    private final String userDidntProvideParameterMessage = "n/a";

    public BusinessCardService() {
        businessCardList.add(
                new BusinessCard(
                        "Dita (Přikrylová) Formánková",
                        "Czechitas z. s.",
                        "Václavské náměstí 837/11",
                        "11000 Praha 1",
                        "dita@czechitas.cs",
                        "+420 800123456",
                        "www.czechitas.cz"
                )
        );
        businessCardList.add(
                new BusinessCard(
                        "Barbora Bühnová",
                        "Czechitas z. s.",
                        "Škrobárenská 511/3",
                        "61700 Brno",
                        null,
                        "+420 800123456",
                        "www.czechitas.cz"
                )
        );
        businessCardList.add(
                new BusinessCard(
                        "Monika Ptáčníková",
                        "Czechitas z. s.",
                        "Technologická 372/2",
                        "70800 Ostrava-Pustkovec",
                        "monika@czechitas.cs",
                        "+420 800123456",
                        "www.czechitas.cz"
                )
        );
        businessCardList.add(
                new BusinessCard(
                        "Mirka Zatloukalová",
                        "Czechitas z. s.",
                        "Vavrečkova 5262",
                        "76001 Zlín",
                        "mirka@czechitas.cs",
                        null,
                        "www.czechitas.cz"
                )
        );
        businessCardList.add(
                new BusinessCard(
                        "Ondřej Čejka",
                        "Czechitas z. s.",
                        "Jungmannova 3",
                        "77900 Olomouc",
                        null,
                        null,
                        "www.czechitas.cz"
                )
        );
        businessCardList.add(
                new BusinessCard(
                        "Kateřina Reiglová",
                        "Czechitas z. s.",
                        "Lipová 1789/9",
                        "37005 České Budějovice",
                        null,
                        null,
                        "www.czechitas.cz"
                )
        );
    }

    public List<BusinessCard> getAll() {
        return businessCardList;
    }

    public BusinessCard getById(int id) {
        return businessCardList.get(id);
    }

    public String getUserDidntProvideParameterMessage() {
        return userDidntProvideParameterMessage;
    }

    public void addNewBusinessCard(BusinessCard businessCard) {
        businessCardList.add(businessCard);
    }
}
