#!/usr/bin/bash
#Installing react with vite
npm create vite@latest .
#uninstalling react & react-dom
echo "Uninstalling react & react-dom"
npm uninstall react react-dom
# Installing react & react dom 18 version

echo "Installing react & react-dom 18 version"
npm i react@18 react-dom@18
# Installing Tailwind
echo "Installing tailwindcss"
npm install -D tailwindcss@3 postcss autoprefixer
npx tailwindcss init -p
echo "copying breakpoints"
cat <<EOF >tailwind.config.js
/** @type {import('tailwindcss').Config} */
export default {
  content: ['./index.html', './src/**/*.{js,ts,jsx,tsx}'],
  theme: {
    container: {
      center: true,
      padding: {
        DEFAULT: '20px',
        lg: '40px',
      },
      screens: {
        sm: '375px',
        md: '768px',
        lg: '1200px',
      },
    },
    screens: {
      sm: '375px',
      md: '768px',
      lg: '1200px',
    },
    extend: {},
  },
  plugins: [],
};
EOF
echo "Copying css"
cat <<EOF >src/index.css
@tailwind base;
@tailwind components;
@tailwind utilities;
EOF
if [ -f src/App.jsx ]; then
  FILE="src/App.jsx"
else
  FILE="src/App.tsx"
fi
cat <<EOF >$FILE
const App = () => {
  return <div className="bg-blue-200 text-2xl">Is this Working?</div>;
};
export default App;
EOF
npm run dev
