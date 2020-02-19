package pl.coderslab.charity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.charity.model.Category;
import pl.coderslab.charity.model.Donation;
import pl.coderslab.charity.model.Institution;
import pl.coderslab.charity.repositories.CategoryRepository;
import pl.coderslab.charity.repositories.DonationRepository;
import pl.coderslab.charity.repositories.InstitutionRepository;

import javax.validation.Valid;
import java.util.List;

@Controller
public class DonationController {

    @Autowired
    private DonationRepository donationRepository;

    @Autowired
    private InstitutionRepository institutionRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    @ModelAttribute("institution")
    public List<Institution> getAllInstitutions() {
        return institutionRepository.findAll();
    }

    @ModelAttribute("category")
    public List<Category> getAllCategories() {
        return categoryRepository.findAll();
    }


    @GetMapping("/add")
    private String createDonation(Model model) {
        model.addAttribute("donatation", new Donation());
        return "firstForm";
    }

    @PostMapping("/add")
    private String addDonation(Donation donation) {

        donationRepository.save(donation);
        return "redirect:/summary";
    }

    @ModelAttribute("sumOfAllBags")
    public Long getSumOfAllBags() {
        return donationRepository.allBagsSum();
    }

}
