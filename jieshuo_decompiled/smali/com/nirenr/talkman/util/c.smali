.class public Lcom/nirenr/talkman/util/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "auto"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "guj"

    const-string v2, "gu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "bur"

    const-string v2, "my"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "tat"

    const-string v2, "tt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "ru"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "swe"

    const-string v2, "sv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "amh"

    const-string v2, "am"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "per"

    const-string v2, "fa"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "kur"

    const-string v2, "ku"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "lat"

    const-string v2, "la"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "rom"

    const-string v2, "ro"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "hau"

    const-string v2, "ha"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "sun"

    const-string v2, "su"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "ibo"

    const-string v2, "ig"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "hmn"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "xho"

    const-string v2, "xh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "ice"

    const-string v2, "is"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "cs"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "hkm"

    const-string v2, "km"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "hrv"

    const-string v2, "hr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "fin"

    const-string v2, "fi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "mlt"

    const-string v2, "mt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "aze"

    const-string v2, "az"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "slo"

    const-string v2, "sl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "kin"

    const-string v2, "rw"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "glg"

    const-string v2, "gl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "pt"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "dan"

    const-string v2, "da"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "zul"

    const-string v2, "zu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "heb"

    const-string v2, "iw"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "fra"

    const-string v2, "fr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "epo"

    const-string v2, "eo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "nl"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "pl"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "gle"

    const-string v2, "ga"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "tel"

    const-string v2, "te"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "pan"

    const-string v2, "pa"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "cat"

    const-string v2, "ca"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "lit"

    const-string v2, "lt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "afr"

    const-string v2, "af"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "wel"

    const-string v2, "cy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "mar"

    const-string v2, "mr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "jp"

    const-string v2, "ja"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "it"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "kan"

    const-string v2, "kn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "tgk"

    const-string v2, "tg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "swa"

    const-string v2, "sw"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "est"

    const-string v2, "et"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "vie"

    const-string v2, "vi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "yor"

    const-string v2, "yo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "kor"

    const-string v2, "ko"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "bos"

    const-string v2, "bs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "cos"

    const-string v2, "co"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "nor"

    const-string v2, "no"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "sm"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "ukr"

    const-string v2, "uk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "ara"

    const-string v2, "ar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "hi"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "de"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "yid"

    const-string v2, "yi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "som"

    const-string v2, "so"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "may"

    const-string v2, "ms"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "jav"

    const-string v2, "jw"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "id"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "ltz"

    const-string v2, "lb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "zh"

    const-string v2, "zh-CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "arm"

    const-string v2, "hy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "sna"

    const-string v2, "sn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "hu"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "snd"

    const-string v2, "sd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "bel"

    const-string v2, "be"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "el"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "tuk"

    const-string v2, "tk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "alb"

    const-string v2, "sq"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "urd"

    const-string v2, "ur"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "spa"

    const-string v2, "es"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "gla"

    const-string v2, "gd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "tr"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "th"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "tam"

    const-string v2, "ta"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "baq"

    const-string v2, "eu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "cht"

    const-string v2, "zh-TW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "ceb"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "sk"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "mal"

    const-string v2, "ml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "fil"

    const-string v2, "tl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "geo"

    const-string v2, "ka"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "sin"

    const-string v2, "si"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "kir"

    const-string v2, "ky"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "srp"

    const-string v2, "sr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "nya"

    const-string v2, "ny"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "pus"

    const-string v2, "ps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "mao"

    const-string v2, "mi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "ben"

    const-string v2, "bn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "lao"

    const-string v2, "lo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "nep"

    const-string v2, "ne"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "bul"

    const-string v2, "bg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "mac"

    const-string v2, "mk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "en"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "lav"

    const-string v2, "lv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "haw"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "or"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "fy"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "kk"

    const-string v2, "kk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "ht"

    const-string v2, "ht"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "mg"

    const-string v2, "mg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "mn"

    const-string v2, "mn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "st"

    const-string v2, "st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "ug"

    const-string v2, "ug"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    const-string v1, "uz"

    const-string v2, "uz"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "<[^<>]*\"result-container\">[^<>]*</div>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/nirenr/talkman/util/c;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method static bridge synthetic a()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/util/c;->b:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public static c(Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V
    .locals 5

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-static {v0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f070695

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07004d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const v3, 0x7f070697

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "zh"

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trans: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "google"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v0, p0}, Lcom/nirenr/talkman/util/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v2}, Lcom/baidu/translate/TransApi$OnResultListener;->onTransResult(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v3, 0x3

    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "https://translate.google.com/m?sl=%s&tl=%s&hl=%s&q=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nirenr/talkman/util/c$a;

    invoke-direct {v3, p1, v1, v0, p0}, Lcom/nirenr/talkman/util/c$a;-><init>(Lcom/baidu/translate/TransApi$OnResultListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/nirenr/talkman/util/HttpUtil;->f(Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)Lcom/nirenr/talkman/util/HttpUtil$d;

    return-void

    :cond_2
    :goto_0
    new-instance v2, Lcom/baidu/translate/TransApi;

    const-string v3, "20170225000039856"

    const-string v4, "3qfku0JExu0Sr_2Ln75Z"

    invoke-direct {v2, v3, v4}, Lcom/baidu/translate/TransApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p0, v1, v0, p1}, Lcom/baidu/translate/TransApi;->asyncTransResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V
    .locals 3

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p0}, Lcom/nirenr/talkman/util/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p3, v0}, Lcom/baidu/translate/TransApi$OnResultListener;->onTransResult(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "https://translate.google.com/m?sl=%s&tl=%s&hl=%s&q=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/util/c$b;

    invoke-direct {v1, p3, p1, p2, p0}, Lcom/nirenr/talkman/util/c$b;-><init>(Lcom/baidu/translate/TransApi$OnResultListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/nirenr/talkman/util/HttpUtil;->f(Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)Lcom/nirenr/talkman/util/HttpUtil$d;

    return-void

    :cond_2
    :goto_0
    new-instance v0, Lcom/baidu/translate/TransApi;

    const-string v1, "20170225000039856"

    const-string v2, "3qfku0JExu0Sr_2Ln75Z"

    invoke-direct {v0, v1, v2}, Lcom/baidu/translate/TransApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/baidu/translate/TransApi;->asyncTransResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V
    .locals 3

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p0}, Lcom/nirenr/talkman/util/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p3, v0}, Lcom/baidu/translate/TransApi$OnResultListener;->onTransResult(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/nirenr/talkman/util/c;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "https://translate.google.com/m?sl=%s&tl=%s&hl=%s&q=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/util/c$c;

    invoke-direct {v1, p3, p1, p2, p0}, Lcom/nirenr/talkman/util/c$c;-><init>(Lcom/baidu/translate/TransApi$OnResultListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/nirenr/talkman/util/HttpUtil;->f(Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)Lcom/nirenr/talkman/util/HttpUtil$d;

    return-void

    :cond_2
    :goto_0
    const-string p0, ""

    invoke-interface {p3, p0}, Lcom/baidu/translate/TransApi$OnResultListener;->onTransResult(Ljava/lang/String;)V

    return-void
.end method
