import { ConnectButton } from "@rainbow-me/rainbowkit";
import Hero from "@/components/hero"

export default function Home() {
  return (
    <main className="flex h-screen flex-col items-center justify-between">
      {/* <ConnectButton /> */}
      <Hero />
    </main>
  );
}

