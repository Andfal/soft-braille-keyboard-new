.class public Ld2/i;
.super Ld2/h;
.source "SourceFile"


# static fields
.field private static k:Ld2/h;

.field private static final l:[Ljava/lang/String;

.field private static final m:[Ljava/lang/String;

.field private static final n:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "and|break|case|continue|default|defer|do|else|elseif|end|false|for|function|goto|if|in|lambda|local|nil|not|or|repeat|return|switch|then|true|until|when|while"

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld2/i;->l:[Ljava/lang/String;

    const-string v0, "self|__add|__band|__bnot|__bor|__bxor|__call|__close|__concat|__div|__eq|__gc|__idiv|__index|__le|__len|__lt|__mod|__mul|__newindex|__pow|__shl|__shr|__sub|__tostring|__unm|_ENV|_G|assert|collectgarbage|dofile|error|findtable|getmetatable|ipairs|load|loadfile|loadstring|module|next|pairs|pcall|print|rawequal|rawget|rawlen|rawset|require|select|self|setmetatable|tointeger|tonumber|tostring|type|unpack|xpcall|activity|call|compile|dump|each|enum|import|loadbitmap|loadlayout|loadmenu|service|set|task|thread|timer|coroutine|debug|io|luajava|math|os|package|string|table|utf8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld2/i;->m:[Ljava/lang/String;

    const/16 v0, 0x17

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ld2/i;->n:[C

    return-void

    :array_0
    .array-data 2
        0x28s
        0x29s
        0x7bs
        0x7ds
        0x2cs
        0x3bs
        0x3ds
        0x2bs
        0x2ds
        0x2fs
        0x2as
        0x26s
        0x21s
        0x7cs
        0x3as
        0x5bs
        0x5ds
        0x3cs
        0x3es
        0x3fs
        0x7es
        0x25s
        0x5es
    .end array-data
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ld2/h;-><init>()V

    sget-object v0, Ld2/i;->n:[C

    invoke-super {p0, v0}, Ld2/h;->C([C)V

    sget-object v0, Ld2/i;->l:[Ljava/lang/String;

    invoke-super {p0, v0}, Ld2/h;->A([Ljava/lang/String;)V

    sget-object v0, Ld2/i;->m:[Ljava/lang/String;

    invoke-super {p0, v0}, Ld2/h;->B([Ljava/lang/String;)V

    const-string v0, "close|flush|info|input|isdir|lines|ls|mkdir|open|output|popen|read|readall|stderr|stdin|stdout|tmpfile|type|write"

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "io"

    invoke-super {p0, v2, v0}, Ld2/h;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "byte|char|dump|find|format|gfind|gmatch|gsub|len|lower|match|pack|packsize|rep|reverse|sub|unpack|upper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "string"

    invoke-super {p0, v2, v0}, Ld2/h;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "astable|bindClass|clear|coding|createArray|createProxy|getContext|instanceof|loadLib|loaded|luapath|new|newArray|newInstance|override|package|tostring"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "luajava"

    invoke-super {p0, v2, v0}, Ld2/h;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "clock|date|difftime|execute|exit|getenv|remove|rename|setlocale|time|tmpname"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "os"

    invoke-super {p0, v2, v0}, Ld2/h;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "clear|clone|concat|const|find|foreach|foreachi|gfind|insert|maxn|move|pack|remove|size|sort|unpack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "table"

    invoke-super {p0, v2, v0}, Ld2/h;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "abs|acos|asin|atan|atan2|ceil|cos|cosh|deg|exp|floor|fmod|frexp|huge|ldexp|log|log10|max|maxinteger|min|mininteger|modf|pi|pow|rad|random|randomseed|sin|sinh|sqrt|tan|tanh|tointeger|type|ult"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "math"

    invoke-super {p0, v2, v0}, Ld2/h;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "byte|char|charpattern|charpos|codepoint|codes|escape|find|fold|gfind|gmatch|gsub|insert|len|lower|match|ncasecmp|next|offset|remove|reverse|sub|title|upper|width|widthindex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf8"

    invoke-super {p0, v2, v0}, Ld2/h;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "create|isyieldable|resume|running|status|wrap|yield"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "coroutine"

    invoke-super {p0, v2, v0}, Ld2/h;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "config|cpath|loaded|loaders|loadlib|path|preload|searchers|searchpath|seeall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "package"

    invoke-super {p0, v2, v0}, Ld2/h;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "debug|gethook|getinfo|getlocal|getmetatable|getregistry|getupvalue|getuservalue|sethook|setlocal|setmetatable|setupvalue|setuservalue|traceback|upvalueid|upvaluejoin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "debug"

    invoke-super {p0, v1, v0}, Ld2/h;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static E()Ld2/h;
    .locals 1

    sget-object v0, Ld2/i;->k:Ld2/h;

    if-nez v0, :cond_0

    new-instance v0, Ld2/i;

    invoke-direct {v0}, Ld2/i;-><init>()V

    sput-object v0, Ld2/i;->k:Ld2/h;

    :cond_0
    sget-object v0, Ld2/i;->k:Ld2/h;

    return-object v0
.end method


# virtual methods
.method public o(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public q(CC)Z
    .locals 1

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public r(CC)Z
    .locals 1

    const/16 v0, 0x5d

    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public s(CC)Z
    .locals 1

    const/16 v0, 0x5b

    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
