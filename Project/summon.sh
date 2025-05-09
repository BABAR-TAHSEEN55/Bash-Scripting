#!/usr/bin/bash
#Installing react with vite
extension="ts"
read -p "Do you want to use TypeScript for your Project ? (y/N) " response
if [[ "$response"=="y" ]]; then
  npm create vite@latest . --silent -- --template react-${extension}
else
  npm create vite@latest . --silent -- --template react
fi
#uninstalling react & react-dom
echo "Uninstalling react & react-dom"
npm uninstall react react-dom --silent
# Installing react & react dom 18 version

echo "Installing react & react-dom 18 version"
npm i react@18 react-dom@18 --silent
# Installing Tailwind
echo "Installing tailwindcss"
#--silent flag doesn't work with npx
npm install -D tailwindcss@3 postcss autoprefixer &>/dev/null
npx tailwindcss init -p &>/dev/null
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
echo "" >src/App.css
npm run dev
