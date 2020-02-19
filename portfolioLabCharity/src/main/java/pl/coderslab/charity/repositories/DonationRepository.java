package pl.coderslab.charity.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.charity.model.Donation;

import java.util.Date;

public interface DonationRepository extends JpaRepository<Donation, Long> {

    @Query(value = "select SUM(quantity) from donation", nativeQuery = true)
    Long allBagsSum();

    @Query(value = "select COUNT(id) from donation", nativeQuery = true)
    Long allDonations();

    @Query(value = "select quantity from donation ORDER BY id DESC LIMIT 1", nativeQuery = true)
    Long lastQuantity();

    @Query(value = "select street from donation ORDER BY id DESC LIMIT 1", nativeQuery = true)
    String lastStreet();

    @Query(value = "select city from donation ORDER BY id DESC LIMIT 1", nativeQuery = true)
    String lastCity();

    @Query(value = "select zip_code from donation ORDER BY id DESC LIMIT 1", nativeQuery = true)
    String lastZip();

    @Query(value = "select pick_up_date from donation ORDER BY id DESC LIMIT 1", nativeQuery = true)
    Date lastDate();

    @Query(value = "select pick_up_time from donation ORDER BY id DESC LIMIT 1", nativeQuery = true)
    String lastTime();

    @Query(value = "select pick_up_comment from donation ORDER BY id DESC LIMIT 1", nativeQuery = true)
    String lastComment();

    @Query(value = "select institution_id from donation ORDER BY id DESC LIMIT 1", nativeQuery = true)
    String lastInstitution();





}
