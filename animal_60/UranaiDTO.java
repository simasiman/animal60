package animal_60;

public class UranaiDTO {
  //60ï™óﬁ
  private String animalDetail;
  private String animalName;
  private String animalPicture;
  //óˆêl
  private String loverDetail;
  private String loverName;
  private String loverPicture;
  //óFêl
  private String friendDetail;
  private String friendName;
  private String friendPicture;
  //édéñ
  private String workDetail;
  private String workName;
  private String workPicture;

  public UranaiDTO(String animalDetail, String animalName, String animalPicture,
      String loverDetail, String loverName, String loverPicture,
      String friendDetail, String friendName, String friendPicture,
      String workDetail, String workName, String workPicture) {

    this.animalDetail = animalDetail;
    this.animalName = animalName;
    this.animalPicture = animalPicture;

    this.loverDetail = loverDetail;
    this.loverName = loverName;
    this.loverPicture = loverPicture;

    this.friendDetail = friendDetail;
    this.friendName = friendName;
    this.friendPicture = friendPicture;

    this.workDetail = workDetail;
    this.workName = workName;
    this.workPicture = workPicture;

  }

  public String getAnimalDetail() {
    return animalDetail;
  }

  public String getAnimalName() {
    return animalName;
  }

  public String getAnimalPicture() {
    return animalPicture;
  }

  public String getLoverDetail() {
    return loverDetail;
  }

  public String getLoverName() {
    return loverName;
  }

  public String getLoverPicture() {
    return loverPicture;
  }

  public String getFriendDetail() {
    return friendDetail;
  }

  public String getFriendName() {
    return friendName;
  }

  public String getFriendPicture() {
    return friendPicture;
  }

  public String getWorkDetail() {
    return workDetail;
  }

  public String getWorkName() {
    return workName;
  }

  public String getWorkPicture() {
    return workPicture;
  }
}
