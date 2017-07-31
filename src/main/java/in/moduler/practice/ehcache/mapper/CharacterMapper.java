package in.moduler.practice.ehcache.mapper;

import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author HK
 */
@Repository
public interface CharacterMapper {

    List<in.moduler.practice.ehcache.model.Character> findAll();

    in.moduler.practice.ehcache.model.Character findById(Long id);

}
