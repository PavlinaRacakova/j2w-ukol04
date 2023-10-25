package cz.czechitas.java2webapps.ukol3.controller;

import cz.czechitas.java2webapps.ukol3.entity.BusinessCard;
import cz.czechitas.java2webapps.ukol3.service.BusinessCardService;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Kontroler obsluhující zobrazování vizitek.
 */
@Controller
public class BusinessCardController {
  private final BusinessCardService service;

  @InitBinder
  public void initBinder(WebDataBinder binder)
  {
    binder.registerCustomEditor(String.class,new StringTrimmerEditor(true));
  }

  public BusinessCardController(BusinessCardService service) {
    this.service = service;
  }

  @GetMapping("/")
  public ModelAndView seznam() {
    ModelAndView result = new ModelAndView("seznam");
    result.addObject("businessCardList", service.getAll());
    result.addObject("userDidntProvideParameterMessage", service.getUserDidntProvideParameterMessage());
    return result;
  }

  @GetMapping("/detail/{id}")
  public ModelAndView detail(@PathVariable int id) {
    ModelAndView result = new ModelAndView("detail");
    result.addObject("businessCard", service.getById(id));
    result.addObject("userDidntProvideParameterMessage", service.getUserDidntProvideParameterMessage());
    result.addObject("businessCardId", id);
    return result;
  }

  @GetMapping("/new")
  public ModelAndView displayNewBusinessCardPage() {
      return new ModelAndView("new");
  }

  @PostMapping("/new")
  public String addNewBusinessCard(BusinessCard businessCard) {
    service.addNewBusinessCard(businessCard);
    return "redirect:/";
  }

  @GetMapping("/edit/{id}")
  public ModelAndView displayEditBusinessCardPage(@PathVariable int id) {
    ModelAndView result = new ModelAndView("edit");
    result.addObject("businessCard", service.getById(id));
    result.addObject("businessCardId", id);
    return result;
  }

  @PostMapping("/edit/{id}")
  public String editBusinessCard(@PathVariable int id, BusinessCard businessCard) {
    service.editBusinessCard(id, businessCard);
    return "redirect:/detail/{id}";
  }

  @PostMapping("/delete")
  public String delete(int id) {
    service.deleteBusinessCard(id);
    return "redirect:/";
  }
}
