package pl.coderslab.charity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.model.Institution;
import pl.coderslab.charity.repositories.DonationRepository;
import pl.coderslab.charity.repositories.InstitutionRepository;

import java.util.List;


@Controller
public class HomeController {

    @Autowired
    private InstitutionRepository institutionRepository;

    @Autowired
    private DonationRepository donationRepository;

    @RequestMapping("/")
    public String homeAction(Model model){
        return "landing-page";
    }

    @ModelAttribute("foundations")
    public List<Institution> getAllInstitutions() { return institutionRepository.findAll(); }

    @ModelAttribute("allInstitutionsNumber")
    public Long getAllInstitutionNumber() { return institutionRepository.numberOfAllInstitutions(); }

    @ModelAttribute("sumOfAllBags")
    public Long getSumOfAllBags() {
        return donationRepository.allBagsSum();
    }

    @ModelAttribute("sumOfAllDonations")
    public Long getSumOfAllDonations() { return donationRepository.allDonations(); }

}
