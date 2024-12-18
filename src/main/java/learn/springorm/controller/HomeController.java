package learn.springorm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import learn.springorm.dao.PlayerDao;
import learn.springorm.entity.Player;

@Controller
public class HomeController {
	
	@Autowired
	private PlayerDao dao;
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@GetMapping("/add")
	public String add() {
		return "add";
	}
	
	@GetMapping("/show")
	public String show(Model m) {
		List<Player> playerList = this.dao.showAllPlayers();
		m.addAttribute("playerList", playerList);
		return "show";
	}
	
	@RequestMapping("/addPlayers")
	public String addPlayers(@RequestParam("id") String id, @RequestParam("name") String player_name, @RequestParam("country") String player_country, @RequestParam("club") String player_club, Model m) {
		  int player_id = Integer.parseInt(id);
		  Player player = new Player(player_id, player_name, player_club, player_country);
		  int i = dao.savePlayer(player); 
		 
		  m.addAttribute("player", player);
		  return "addPlayer";
	}
	
	@PostMapping("/find")
	public String find(@RequestParam("id") String id, Model m) {
		int player_id = Integer.parseInt(id);
		Player p = dao.getPlayerById(player_id);
		m.addAttribute("player", p);
		return "findById";
	}
	
	@PostMapping("/delete")
	public String delete(@RequestParam("id") String id, Model m) {
		int player_id = Integer.parseInt(id);
		dao.deletePlayerById(player_id);
		
		//Redirect to show all Players page after deleting;
		List<Player> playerList = this.dao.showAllPlayers();
		m.addAttribute("playerList", playerList);
		return "show";
		
	}
	
	@PostMapping("/update")
	public String update(@RequestParam("id") String id, Model m) {
		int player_id = Integer.parseInt(id);
		Player player = this.dao.getPlayerById(player_id);
		m.addAttribute("player", player);
		return "update";
	}
	
	
	@PostMapping("/updatePlayer")
	public String updatePlayer(@RequestParam("id") String id, @RequestParam("name") String player_name, @RequestParam("country") String player_country, @RequestParam("club") String player_club, Model m) {
		int player_id = Integer.parseInt(id);
		Player player = new Player(player_id, player_name, player_club, player_country);
		
		dao.updatePlayerById(player);
		
		m.addAttribute("player", player);
		return "updatedPlayer";
	}
}
