import { motion } from "framer-motion";
import { useNavigate } from "react-router";
import { useEffect, useState } from "react";

const Banner = ({ banner, heading, subheading, btn1, btn2 }) => {
    const navigate = useNavigate();

    return (
        <div className="gardientBg rounded-xl rounded-br-[80px] md:p-9 px-4 py-9">
            <div className="flex flex-col md:flex-row-reverse justify-between items-center gap-10">
                <motion.div
                    initial="hidden"
                    whileInView={"show"}
                    viewport={{ once: false, amount: 0.7 }}
                >
                    <img src={banner} alt="" className="lg:h-[386px]" />
                </motion.div>

                <motion.div
                    initial="hidden"
                    whileInView={"show"}
                    viewport={{ once: false, amount: 0.7 }}
                    className="md:w-2/3 "
                >
                    <h2 className="md:text-3xl text-3xl font-bold text-white mb-6 leading-relaxed">
                        {heading}
                    </h2>
                    <p className="text-[#EBEBEB] text-2xl mb-8">{subheading}</p>
                    <div className="space-x-5 space-y-4">
                        <button
                            className="btnHome"
                            onClick={() => navigate("/signUp")}
                        >
                            {btn1}
                        </button>
                        <button
                            className="btnHome"
                            onClick={() => navigate("/login")}
                        >
                            {btn2}
                        </button>
                    </div>
                </motion.div>
            </div>
        </div>
    );
};

export default Banner;
