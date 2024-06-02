"use client";
import Link from "next/link";
import { Button } from "@/components/ui/button";
import { Separator } from "@/components/ui/separator";
import { Textarea } from "@/components/ui/textarea";
import { useState } from "react";

export default function Dashboard() {
  const [params, setParams] = useState<string>("");
  const [result, setResult] = useState<string>("");
  const [loading, setLoading] = useState<boolean>(false);

  const handleSubmit = async () => {
    setLoading(true);
    let headersList = {
      Accept: "*/*",
      "Content-Type": "application/json",
    };

    try {
      let response = await fetch(
        "https://endpoint-taz-650-4-6bb92af8-7i3yxzspbq-ew.a.run.app/cairo_run",
        {
          method: "POST",
          body: params,
          headers: headersList,
          mode: "no-cors",
        }
      );

      let data = await response.json();
      console.log(data);
      setResult(data.result > 0.5 ? "Poisonous" : "Edible");
      setLoading(false);
    } catch (error) {
      // //send this default response
      console.log("Error:", error);
      setLoading(false);
    }
  };

  return (
    // <div className="flex flex-col w-full min-h-screen">

    <main className="flex min-h-[calc(100vh_-_theme(spacing.16))] bg-gray-100/40 flex-1 flex-col gap-4 p-4 md:gap-8 md:p-10 dark:bg-gray-800/40">
      <div className="max-w-6xl w-full mx-auto grid gap-2">
        <h1 className="font-semibold text-3xl">Deployed Models</h1>
      </div>
      <div className="grid gap-6 max-w-6xl w-full mx-auto">
        <div className="border rounded-lg overflow-hidden grid gap-4 lg:gap-px lg:bg-gray-100">
          <div className="flex flex-col lg:flex-row bg-white text-sm p-2 relative dark:bg-gray-950">
            <div className="p-2 grid gap-1 flex-1">
              <div className="font-medium">Mushroom Classify</div>
              <div className="text-gray-500 dark:text-gray-400">
                Classify mushrooms as edible or poisonous.
              </div>
            </div>
          </div>
          <div className="flex flex-col lg:flex-row bg-white text-sm p-2 relative dark:bg-gray-950">
            <div className="p-2 grid gap-1 flex-1">
              <div className="font-medium">Input Array</div>
              <div className="text-gray-500 dark:text-gray-400">
                Enter an array of values to use as parameters.
              </div>
            </div>
            <Separator className="my-2 lg:hidden" />
            <div className="p-2 grid gap-1 flex-1">
              <Textarea
                placeholder="Eg : [1 2 3 4 5 ...]"
                className="w-full"
                value={params}
                onChange={(e) => setParams(e.target.value)}
              />
              <Button variant="outline" onClick={handleSubmit}>
                {loading ? "Loading..." : "Run Inference"}
              </Button>
              <div className="result">
                <span className="font-semibold">Result:</span>{" "}
                {result === "Edible" ? (
                  <span className="text-green-500">{result}</span>
                ) : (
                  <span className="text-red-500">{result}</span>
                )}
              </div>
            </div>
          </div>
          <div className="flex flex-col lg:flex-row bg-white text-sm p-2 relative dark:bg-gray-950">
            <div className="p-2 grid gap-1 flex-1">
              <div className="font-medium">Sentiment Analysis</div>
              <div className="text-gray-500 dark:text-gray-400">
                Analyze the sentiment of text inputs.
              </div>
            </div>
            <Separator className="my-2 lg:hidden" />
            <div className="p-2 grid gap-1 flex-1">
              <Button variant="outline" onClick={() => {}}>
                Run Inference
              </Button>
            </div>
          </div>
          <div className="flex flex-col lg:flex-row bg-white text-sm p-2 relative dark:bg-gray-950">
            <div className="p-2 grid gap-1 flex-1">
              <div className="font-medium">Image Classification</div>
              <div className="text-gray-500 dark:text-gray-400">
                Classify images into predefined categories.
              </div>
            </div>
            <Separator className="my-2 lg:hidden" />
            <div className="p-2 grid gap-1 flex-1">
              <Button variant="outline" onClick={() => {}}>
                Run Inference
              </Button>
            </div>
          </div>
        </div>
      </div>
    </main>
    // </div>
  );
}

function FrameIcon(props: any) {
  return (
    <svg
      {...props}
      xmlns="http://www.w3.org/2000/svg"
      width="24"
      height="24"
      viewBox="0 0 24 24"
      fill="none"
      stroke="currentColor"
      strokeWidth="2"
      strokeLinecap="round"
      strokeLinejoin="round"
    >
      <line x1="22" x2="2" y1="6" y2="6" />
      <line x1="22" x2="2" y1="18" y2="18" />
      <line x1="6" x2="6" y1="2" y2="22" />
      <line x1="18" x2="18" y1="2" y2="22" />
    </svg>
  );
}
