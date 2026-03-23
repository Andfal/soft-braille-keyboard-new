.class public Lf2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = "http://fanyi.sogou.com:80/reventondc/multiLangTranslate"

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "auto"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "zh"

    const-string v2, "zh-CHS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "en"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "jp"

    const-string v2, "ja"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "kor"

    const-string v2, "ko"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "fra"

    const-string v2, "fr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "de"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "ru"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "spa"

    const-string v2, "es"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "ara"

    const-string v2, "ar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "it"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "pt"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "cs"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "pl"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "hu"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "nl"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "swe"

    const-string v2, "sv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "fin"

    const-string v2, "fi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "tr"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "vie"

    const-string v2, "vi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "th"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "nor"

    const-string v2, "no"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "el"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "hi"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "est"

    const-string v2, "et"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "bul"

    const-string v2, "bg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "cht"

    const-string v2, "zh-CHT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "yue"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "bos"

    const-string v2, "bs-Latn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "per"

    const-string v2, "fa"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "kli"

    const-string v2, "tlh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "hrv"

    const-string v2, "hr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "rom"

    const-string v2, "ro"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "lav"

    const-string v2, "lv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "lit"

    const-string v2, "lt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "may"

    const-string v2, "ms"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "mlt"

    const-string v2, "mt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "slo"

    const-string v2, "sl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "srp"

    const-string v2, "sr-Latn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "src"

    const-string v2, "sr-Cyrl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "sk"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "swa"

    const-string v2, "sw"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "afr"

    const-string v2, "af"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "ukr"

    const-string v2, "uk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "urd"

    const-string v2, "ur"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "wel"

    const-string v2, "cy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "heb"

    const-string v2, "he"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "id"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "fil"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "sm"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    const-string v1, "ben"

    const-string v2, "bn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lf2/a;->c:Z

    return-void
.end method

.method public static a(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .locals 3

    const-string v0, "auto_trans"

    invoke-virtual {p0, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->play(Ljava/lang/String;)V

    const-string v0, "AiTrans3"

    invoke-virtual {p0, v0, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f070697

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v1, v0, p2}, Lcom/nirenr/talkman/util/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v2, Lf2/a$c;

    invoke-direct {v2, p0, p1, p2}, Lf2/a$c;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V

    invoke-static {p2, v1, v0, v2}, Lf2/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V
    .locals 5

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-static {v0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    const v2, 0x7f070699

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "auto"

    if-eqz v0, :cond_0

    new-instance v0, Lf2/a$a;

    invoke-direct {v0, p3, p1, p2, p0}, Lf2/a$a;-><init>(Lcom/baidu/translate/TransApi$OnResultListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p2, p0, v0}, Lcom/nirenr/talkman/util/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V

    return-void

    :cond_0
    const-string v0, "zh"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/nirenr/talkman/util/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    :cond_3
    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    sget-object v0, Lf2/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Lf2/a;->a:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lf2/a;->b:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    sget-object v2, Lf2/a;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x2

    aput-object p0, v3, v1

    const-string v1, "from=%s&to=%s&text=%s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lf2/a$b;

    invoke-direct {v2, p3, p1, p2, p0}, Lf2/a$b;-><init>(Lcom/baidu/translate/TransApi$OnResultListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/nirenr/talkman/util/HttpUtil;->g(Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)Lcom/nirenr/talkman/util/HttpUtil$d;

    return-void

    :cond_5
    :goto_0
    sget-boolean p0, Lf2/a;->c:Z

    if-eqz p0, :cond_6

    return-void

    :cond_6
    sput-boolean v1, Lf2/a;->c:Z

    const-string p0, "\u6682\u4e0d\u652f\u6301\u8be5\u8bed\u8a00\u4f7f\u7528"

    invoke-static {p0, p1, p2, p3}, Lcom/nirenr/talkman/util/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V

    return-void
.end method
