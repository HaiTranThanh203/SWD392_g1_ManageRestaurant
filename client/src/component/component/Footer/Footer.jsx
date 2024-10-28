import logo from "../../../assets/zeroTable.jpg";
import instagram from "../../../assets/instagram.png";
import facebook from "../../../assets/faIcon.png";
import twitter from "../../../assets/twitter.jpg";

const Footer = () => {
    return (
        <div className="bg-[#010851] md:px-14 p-4 w-full mx-auto text-white">
            <div className="my-12 flex flex-col md:flex-row gap-10">
                <div className="md:w-1/2 space-y-8">
                    <a
                        href="/"
                        className="text-2xl font-semibold flex items-center space-x-3 text-primary"
                    >
                        <img
                            src={logo}
                            alt=""
                            className="w-10 max-w-[500px] rounded-full inline-block items-center"
                        />
                        <span className="text-white">VietKitchen</span>
                    </a>

                    <p className="md:w-1/2">
                        VietKitchen restaurant management software brings
                        convenience and optimizes time in customer and order
                        management for your restaurant.
                    </p>
                    <div>
                        <input
                            type="email"
                            name="email"
                            id="email"
                            placeholder="Your email"
                            className="bg-[#9a7af159] py-2 px-4 rounded-md focus:outline-none"
                        />
                        <input
                            type="submit"
                            value={"Subscribe"}
                            className="px-4 py-2 bg-secondary rounded-md -ml-2 cursor-pointer hover:bg-white hover:text-primary duration-300 transition-all"
                        />
                    </div>
                </div>

                <div className="md:w-1/2 flex flex-col md:flex-row flex-wrap justify-between gap-8 items-start">
                    <div className="space-y-4 mt-5">
                        <h4 className="text-xl">FAQ</h4>
                        <ul className="space-y-3">
                            <a className="block hover:text-gray-300">
                                How to use?
                            </a>
                            <a className="block hover:text-gray-300">
                                Package prices?
                            </a>
                            <a className="block hover:text-gray-300">
                                How to try?
                            </a>
                            <a className="block hover:text-gray-300">
                                Purpose of the website?
                            </a>
                        </ul>
                    </div>
                    <div className="space-y-4 mt-5">
                        <h4 className="text-xl">Platform</h4>
                        <ul className="space-y-3">
                            <a className="block hover:text-gray-300">
                                Overview
                            </a>
                            <a className="block hover:text-gray-300">
                                Features
                            </a>
                            <a className="block hover:text-gray-300">
                                Platform
                            </a>
                            <a className="block hover:text-gray-300">Pricing</a>
                        </ul>
                    </div>
                    <div className="space-y-4 mt-5">
                        <h4 className="text-xl">Contact</h4>
                        <ul className="space-y-3">
                            <p className="hover:text-gray-300">
                                (+84) 888-637-937
                            </p>
                            <p className="hover:text-gray-300">
                                No. 7, Alley 5, Hoang Dan Street
                            </p>
                            <p className="hover:text-gray-300">Hanoi</p>
                            <p className="hover:text-gray-300">
                                Group4@gmail.com
                            </p>
                        </ul>
                    </div>
                </div>
            </div>

            <hr />

            <div className="flex flex-col sm:flex-row gap-8 sm:items-center justify-between my-8">
                <p>@2024. All rights reserved</p>
                <div className="flex items-center space-x-5">
                    <img
                        src={facebook}
                        alt=""
                        className="w-8 cursor-pointer hover: translate-y-4 
                    transition-all duration-300 rounded-lg"
                    />
                    <img
                        src={instagram}
                        alt=""
                        className="w-8 cursor-pointer hover: translate-y-4 
                    transition-all duration-300"
                    />
                    <img
                        src={twitter}
                        alt=""
                        className="w-8 cursor-pointer hover: translate-y-4 
                    transition-all duration-300"
                    />
                </div>
            </div>
        </div>
    );
};

export default Footer;