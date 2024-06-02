import React from "react";
import Link from "next/link";

const Feature = () => {
  return (
    <>
      <section className="relative" aria-labelledby="Featuretwo" id="features">
        <div className="flex justify-between w-full -z-1 absolute flex-row h-full left-0 lg:h-full lg:max-w-7xl lg:px-0 mx-auto px-6 right-0">
          <div className="w-full h-full border-[#f5f5f510]/5 border-dashed border-x"></div>
          <div className="w-full h-full border-[#f5f5f510]/5 border-dashed border-x"></div>
          <div className="w-full h-full border-[#f5f5f510]/5 border-dashed border-x"></div>
          <div className="w-full h-full border-[#f5f5f510]/5 border-dashed border-x"></div>
          <div className="w-full h-full border-[#f5f5f510]/5 border-dashed border-x"></div>
          <div className="w-full h-full border-[#f5f5f510]/5 border-dashed border-x"></div>
        </div>
        <div className="relative px-8 lg:px-32 md:px-12 mx-auto max-w-7xl py-12 lg:py-24 space-y-24">
          <div className="list-none gap-4 grid grid-cols-1 lg:gap-24 lg:grid-cols-2 mt-6">
            <p className="max-w-2xl mt-4 text-slate-800 text-lg">
              The project aims to simplify the process of training models on
              private datasets. These datasets can have custom access control
              conditions which enable specific type of users or model providers
              to use this private datasets.
            </p>
            <p className="mt-4">
              <strong>For compute</strong> - lilpad which is a compute network
              that can be used to run arbitrary compute workload, ml model
              training in our case.
              <br />
              <strong>For model verification</strong> - Starknet, Orion and zkML
              with the help of Giza SDK.
            </p>
          </div>
          <div className="list-none gap-4 grid grid-cols-1 lg:gap-24 lg:grid-cols-2 mt-6">
            <p className="max-w-2xl mt-4 text-slate-800 text-lg">
            The projects automates the process of deploying ml model scripts by auto-containering them, training the models on a compute network, saving the models weights on IPFS nodes.
            </p>
            <p className="mt-4">
              <strong>For hosting datasets</strong> - Lighthouse onramp and
              Filecoin IPFS
              <br />
              <strong>For encryption and access control</strong> - Lit Protocol
              and Actions
            </p>
          </div>
          <div className="list-none gap-4 grid grid-cols-1 lg:gap-24 lg:grid-cols-2 mt-6">
            <p className="max-w-2xl mt-4 text-slate-800 text-lg">
              In addition to these, the platform also hosts the ml models as an
              REST endpoints that can be used for inference and verify model
              correctness through zkML.
            </p>
          </div>
        </div>
      </section>
    </>
  );
};

export default Feature;
