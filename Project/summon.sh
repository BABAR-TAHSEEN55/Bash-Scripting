#!/usr/bin/bash
#Installing react with vite
# extension="ts"
read -p "Do you want to use TypeScript for your Project ? (y/N) " response
if [[ "$response"=="y" ]]; then
  pnpm create vite@latest . --template react-ts
  # pnpm create vite@latest . --template react-${extension}
else
  pnpm create vite@latest . --template react
fi
#uninstalling react & react-dom as react-19 is not stable yet
echo "Uninstalling react & react-dom"
pnpm uninstall react react-dom
# Installing react & react dom 18 version

echo "Installing react & react-dom 18 version"
pnpm i react@18 react-dom@18
# Installing Tailwind
echo "Installing tailwindcss"
#--silent flag doesn't work with npx
pnpm install -D tailwindcss@3 postcss autoprefixer &>/dev/null
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
pnpm run dev
