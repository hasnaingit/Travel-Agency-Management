
package com.hasnain.travelagency.dao;

import com.hasnain.travelagency.model.Packcategory;
import org.springframework.stereotype.Service;

@Service
public interface PackcategoryService {
        public String insertPackcategory(Packcategory pc);

    public String updatePackcategory(Packcategory pc);

    public String deletePackcategory(int packcatid);

    public String viewPackcategory();

    public Packcategory  viewOnePackcategory(int packcatid);
}
