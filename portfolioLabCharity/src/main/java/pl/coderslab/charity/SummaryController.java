package pl.coderslab.charity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.repositories.CategoryRepository;
import pl.coderslab.charity.repositories.DonationRepository;
import pl.coderslab.charity.repositories.InstitutionRepository;

import java.util.Date;

@Controller
public class SummaryController {

    @Autowired
    private DonationRepository donationRepository;

    @Autowired
    private InstitutionRepository institutionRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    @RequestMapping("/summary")
    public String homeAction(Model model){
        return "summary";
    }

    @ModelAttribute("quantity")
    public Long getQuantity() { return donationRepository.lastQuantity(); }
    @ModelAttribute("street")
    public String getStreet() { return donationRepository.lastStreet(); }
    @ModelAttribute("zip")
    public String getZip() { return donationRepository.lastZip(); }
    @ModelAttribute("city")
    public String getCity() { return donationRepository.lastCity(); }
    @ModelAttribute("date")
    public Date getDate() { return donationRepository.lastDate(); }
    @ModelAttribute("time")
    public String getTime() { return donationRepository.lastTime(); }
    @ModelAttribute("comment")
    public String getComment() { return donationRepository.lastComment(); }
    @ModelAttribute("institution")
    public String getInstitution() { return donationRepository.lastInstitution(); }

}
