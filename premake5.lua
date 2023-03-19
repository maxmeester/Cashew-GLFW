project "GLFW"

	kind "StaticLib"

	files {

		"include/GLFW/glfw3.h",

		"src/internal.h",
		"src/mappings.h",
		"src/platform.h",
		"src/null_joystick.h",
		"src/null_platform.h",

		"src/init.c",
		"src/input.c",
		"src/vulkan.c",
		"src/window.c",
		"src/context.c",
		"src/monitor.c",
		"src/platform.c",
		"src/null_init.c",
		"src/egl_context.c",
		"src/null_window.c",
		"src/null_monitor.c",
		"src/null_joystick.c",
		"src/osmesa_context.c"

	}

	filter "system:windows"

		defines "_GLFW_WIN32"

		files {

			"src/win32_time.h",
			"src/win32_thread.h",
			"src/win32_joystick.h",
			"src/win32_platform.h",

			"src/win32_init.c",
			"src/win32_time.c",
			"src/wgl_context.c",
			"src/win32_module.c",
			"src/win32_thread.c",
			"src/win32_window.c",
			"src/win32_monitor.c",
			"src/win32_joystick.c"

		}

	filter "system:linux"

		defines "_GLFW_X11"

		files {

			"posix_poll.h",
			"posix_time.h",
			"xkb_unicode.h",
			"posix_thread.h",
			"x11_platform.h",
			"linux_joystick.h",

			"x11_init.c",
			"posix_poll.c",
			"posix_time.c",
			"x11_window.c",
			"glx_context.c",
			"x11_monitor.c",
			"xkb_unicode.c",
			"posix_module.c",
			"posix_thread.c",
			"linux_joystick.c"

		}

	filter "system:macosx"

		defines "_GLFW_COCOA"

		files {

			"posix_poll.h",
			"cocoa_time.h",
			"posix_time.h",
			"posix_thread.h",
			"cocoa_joystick.h",
			"cocoa_platform.h",

			"cocoa_init.m",
			"cocoa_window.m",
			"nsgl_context.m",
			"cocoa_monitor.m",
			"cocoa_joystick.m",

			"cocoa_time.c",
			"posix_poll.c",
			"posix_time.c",
			"posix_module.c",
			"posix_thread.c"

		}

	filter "toolset:msc"

		defines "_CRT_SECURE_NO_WARNINGS"