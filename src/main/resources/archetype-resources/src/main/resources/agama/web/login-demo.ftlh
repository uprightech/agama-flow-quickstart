[#ftl output_format="HTML"]
<!DOCTYPE html>
<html>

<head>
    <title>Agama Quickstart :: Login </title>
    <link href= "https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet"/>
</head>

<body class="flex items-center justify-center
              min-h-screen bg-gray-200">
    <div class="main bg-white rounded-lg shadow-md p-10 
    transition-transform w-96 text-center">
        <h1 class="text-green-600 text-3xl"> Agama QuickStart</h1>
        <h3 class="text-lg"> Enter your credentials </h3>
        [#if errormsg??]
        <h3 class="text-red-600 text-3xl">${errormsg}</h3>
        [/#if]
        <form method="post">
            <label for="username" class="block mt-4 mb-2 text-lef
            t text-gray-700 font-bold">Username:</label>
            <input type="text" id="username" name="username" 
                   placeholder="Enter your Username" 
                   class="block w-full mb-6 px-4 py-2 border border
                -gray-300 rounded-md focus:outline-none
                 focus:border-green-400" required>

            <label for="password" class="block mb-2 text-left
             text-gray-700 font-bold">Password:</label>
            <input type="password" id="password" name="password" 
                   placeholder="Enter your Password" 
                   class="block w-full mb-6 px-4 py-2 border 
                border-gray-300 rounded-md focus:outline-none
                 focus:border-green-400" required>

            <div class="flex justify-center items-center">
                <button type="submit" 
                        class="bg-green-600 text-white py-3 px-6 rounded
                    -md cursor-pointer transition-colors 
                    duration-300 hover:bg-green-500">
                    Login
                </button>
            </div>
        </form>
    </div>
</body>

</html>