/**
 * v0 by Vercel.
 * @see https://v0.dev/t/Sk7YKzAafyo
 * Documentation: https://v0.dev/docs#integrating-generated-code-into-your-nextjs-app
 */
import Link from "next/link";
import { Label } from "@/components/ui/label";
import { Input } from "@/components/ui/input";
import { Textarea } from "@/components/ui/textarea";
import {
  Select,
  SelectTrigger,
  SelectValue,
  SelectContent,
  SelectItem,
} from "@/components/ui/select";
import { Button } from "@/components/ui/button";
import { DatabaseIcon } from "lucide-react";

export default function Dashboard() {
  return (
    <div className="flex min-h-screen">
      <div className="bg-gray-900 text-white p-6 hidden md:block w-64 shrink-0">
        <div className="space-y-4">
          <Link
            href="#"
            className="flex items-center gap-2 font-bold text-lg"
            prefetch={false}
          >
            <Grid3x3Icon className="w-6 h-6" />
            <span>ML Deployment</span>
          </Link>
          <nav className="space-y-2">
            <Link
              href="#"
              className="flex items-center gap-2 text-gray-400 hover:text-white transition-colors"
              prefetch={false}
            >
              <Grid3x3Icon className="w-5 h-5" />
              <span>Dashboard</span>
            </Link>
            <Link
              href="#"
              className="flex items-center gap-2 text-gray-400 hover:text-white transition-colors"
              prefetch={false}
            >
              <LayersIcon className="w-5 h-5" />
              <span>Deploy Models</span>
            </Link>
            <Link
              href="#"
              className="flex items-center gap-2 text-gray-400 hover:text-white transition-colors"
              prefetch={false}
            >
              <DatabaseIcon className="w-5 h-5" />
              <span>Upload Datasets</span>
            </Link>
          </nav>
        </div>
      </div>
      <div className="flex-1 bg-gray-100 dark:bg-gray-950 p-6">
        <div className="max-w-2xl mx-auto">
          <h1 className="text-3xl font-bold mb-6">Deploy Model</h1>
          <form className="space-y-6">
            <div className="grid grid-cols-2 gap-6">
              <div className="space-y-2">
                <Label htmlFor="name">Name</Label>
                <Input id="name" placeholder="Enter your name" />
              </div>
              <div className="space-y-2">
                <Label htmlFor="description">Description</Label>
                <Textarea id="description" placeholder="Enter a description" />
              </div>
            </div>
            <div className="grid grid-cols-2 gap-6">
              <div className="space-y-2">
                <Label htmlFor="requirements">Requirements</Label>
                <Input id="requirements" type="file" />
              </div>
              <div className="space-y-2">
                <Label htmlFor="model">Model</Label>
                <Input id="model" type="file" />
              </div>
            </div>
            <div className="space-y-2">
              <Label htmlFor="dataset">Dataset</Label>
              <Select>
                <SelectTrigger>
                  <SelectValue placeholder="Select a dataset" />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="dataset1">Dataset 1</SelectItem>
                  <SelectItem value="dataset2">Dataset 2</SelectItem>
                  <SelectItem value="dataset3">Dataset 3</SelectItem>
                </SelectContent>
              </Select>
            </div>
            <Button type="submit" className="w-full">
              Deploy
            </Button>
          </form>
        </div>
      </div>
    </div>
  );
}

function Grid3x3Icon(props : any) {
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
      <rect width="18" height="18" x="3" y="3" rx="2" />
      <path d="M3 9h18" />
      <path d="M3 15h18" />
      <path d="M9 3v18" />
      <path d="M15 3v18" />
    </svg>
  );
}

function LayersIcon(props : any) {
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
      <path d="m12.83 2.18a2 2 0 0 0-1.66 0L2.6 6.08a1 1 0 0 0 0 1.83l8.58 3.91a2 2 0 0 0 1.66 0l8.58-3.9a1 1 0 0 0 0-1.83Z" />
      <path d="m22 17.65-9.17 4.16a2 2 0 0 1-1.66 0L2 17.65" />
      <path d="m22 12.65-9.17 4.16a2 2 0 0 1-1.66 0L2 12.65" />
    </svg>
  );
}
