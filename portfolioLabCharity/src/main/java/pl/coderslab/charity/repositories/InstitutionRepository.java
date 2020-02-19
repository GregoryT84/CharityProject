package pl.coderslab.charity.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.charity.model.Institution;

public interface InstitutionRepository extends JpaRepository<Institution, Long> {

    @Query(value = "select COUNT(id) from institution", nativeQuery = true)
    Long numberOfAllInstitutions();

}
