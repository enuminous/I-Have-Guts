import unittest
from simulation import integrate,rhs
class Tests(unittest.TestCase):
 def test_exact(self): self.assertLess(max(r[3] for r in integrate()),1e-9)
 def test_monotonic(self):
  r=integrate(100)
  self.assertTrue(all(b[1]>a[1] for a,b in zip(r,r[1:])))
 def test_rhs(self): self.assertAlmostEqual(rhs(2,(4,0))[1],-.25)
 def test_domain(self):
  with self.assertRaises(ValueError): integrate(start=0)
if __name__=='__main__': unittest.main()
