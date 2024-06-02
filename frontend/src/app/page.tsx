import Feature from "@/components/Feature";
import Hero from "@/components/Hero";
import { ConnectButton } from "@rainbow-me/rainbowkit";

export default function Home() {
  return (
    <main className="flex h-screen flex-col items-center justify-between">
     
      <Hero />
      <Feature />
    </main>
  );
}
