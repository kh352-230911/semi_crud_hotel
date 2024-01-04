/** @type {import('tailwindcss').Config} */
module.exports = {
    purge: [],
    darkMode: false,
    theme: {
        extend: {
            keyframes: {
                bell: {
                    "0%, 50%": {
                        transform: "rotate(0deg)",
                    },
                    "5%, 15%, 25%, 35%, 45%": {
                        transform: "rotate(13deg)",
                    },
                    "10%, 20%, 30%, 40%": {
                        transform: "rotate(-13deg)",
                    },
                },
            },
            animation: {
                bell: "bell 2s infinite linear",
            },
        },
        container: {
            center: true
        },
    },
}