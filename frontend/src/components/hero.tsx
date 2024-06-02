import Link from 'next/link';

export default function Hero() {
    return (

        <section className="relative w-full bg-black rounded-b-2xl" id="hero">
            <div className="flex justify-between w-full -z-[1px] absolute flex-row h-full left-0 lg:h-full lg:max-w-7xl lg:px-0 mx-auto px-6 right-0">
                <div className="w-full h-full border-[#f5f5f510]/5 border-dashed border-x"></div>
                <div className="w-full h-full border-[#f5f5f510]/5 border-dashed border-x"></div>
                <div className="w-full h-full border-[#f5f5f510]/5 border-dashed border-x"></div>
                <div className="w-full h-full border-[#f5f5f510]/5 border-dashed border-x"></div>
                <div className="w-full h-full border-[#f5f5f510]/5 border-dashed border-x"></div>
                <div className="w-full h-full border-[#f5f5f510]/5 border-dashed border-x"></div>
            </div>
            <section>
                <div className="items-center relative max-w-7xl mx-auto w-full lg:px-16 md:px-12 lg:pb-24 lg:pt-30 pb-12 pt-32 px-5">
                    <div className="max-w-5xl mx-auto">
                        <div className="md:text-center text-left">
                            <div className="max-w-4xl gap-6 lg:gap-12 lg:items-end mx-auto">
                                <div className='flex flex-col justify-center items-center'>

                                    <img className="" src="./logo.png" height="225" width="225">
                                    </img>

                                    <h1 className="font-medium mt-8 text-[65px] leading-[74px] tracking-tight bg-clip-text text-transparent bg-gradient-to-br from-slate-200 via-slate-300 to-slate-600">CipherCraft</h1>

                                    <p className=" font-light text-2xl leading-7 tracking-tight bg-clip-text text-transparent bg-gradient-to-br from-slate-100 via-slate-300 to-slate-600 m-2 p-4">Empowering AI Innovation with Lit-Encrypted Data</p>

                                </div>
                            </div>
                            <div className="flex flex-col gap-3 items-center justify-center mt-12 sm:flex-row">
                                <Link href="/dashboard" className="items-center relative text-sm  focus:ring-[#e0ffe7] hover:text-gray-900 dark:text-white border-2 border-cyan-100 focus:ring-4 font-medium from-[#82bc92] group group-hover:from-[#77d68a] group-hover:to-[#59d973] inline-flex justify-center overflow-hidden  text-gray-900 to-[#6112b5] focus:shadow-lg mb-2 mr-2 w-fit rounded-full" id="hero-landing-cta-button">



                                    <span className="flex items-center justify-center text-white duration-300 ease-in  relative rounded-full transition-all py-2.5 px-5 hover:bg-cyan-100 hover:text-black">Get started
                                    </span>


                                </Link>




                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </section>


    )
}

