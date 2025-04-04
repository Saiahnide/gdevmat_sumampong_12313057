public class Walker {
  
  public PVector position = new PVector();
  public PVector velocity = new PVector(); 
  public PVector acceleration = new PVector();
  
  public float velocityLimit = 10;
  public float scale = 15;
  
  public float mass = 1;
  
  float colR, colG, colB;
  
  public Walker()
  {
    float colorRngR = random(256);
    float colorRngG = random(256);
    float colorRngB = random(256);
    
    this.colR = colorRngR;
    this.colG = colorRngG;
    this.colB = colorRngB;
  }
  
  public void applyForce(PVector force)
  {
    PVector f = PVector.div(force, this.mass);
    this.acceleration.add(f); 
  }
  
  public void update()
  {
    // this.acceleration = PVector.random2D();
    this.velocity.add(this.acceleration); 
    this.velocity.limit(velocityLimit);
    this.position.add(this.velocity);
    this.acceleration.mult(0); 
  }
  
  public void render()
  {    
    fill(colR, colG, colB);
    circle(position.x, position.y, scale);
  }
  
  public void checkEdges()
  {
    if (this.position.x >= Window.right || this.position.x <= Window.left)
    {
      this.position.x = Window.right;
      this.velocity.x *= -1;
    }
    else if (this.position.y >= Window.top || this.position.y <= Window.bottom)
    {
      this.position.y = Window.bottom;
      this.velocity.y *= -1;
    }
  }
}
