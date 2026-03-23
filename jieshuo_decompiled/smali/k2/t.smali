.class public Lk2/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/regex/Pattern;

.field public static final f:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\p{Upper}\\p{Lower})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lk2/t;->a:Ljava/util/regex/Pattern;

    const-string v0, "(\\p{Lower})(\\p{Upper})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lk2/t;->b:Ljava/util/regex/Pattern;

    const-string v0, "@"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lk2/t;->c:Ljava/util/regex/Pattern;

    const-string v0, "[\n.\u3002\uff1f\uff01?!,\uff0c]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lk2/t;->d:Ljava/util/regex/Pattern;

    const-string v0, "[0-9,.]{5,}|\\.[ \r\n]+|[,!?;\u3002\uff1f\uff01\uff0c\r\n\u201c\u201d\uff1a\uff1b\u060c\u061f\u061b]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lk2/t;->e:Ljava/util/regex/Pattern;

    const-string v0, "[0-9,.]{5,}|\\.[ \r\n]+|[^a-zA-Z0-9][\\. ]+|[!?;\u3002\uff1f\uff01\uff0c\n\u201c\u201d\uff1a\uff1b\u060c\u061f\u061b]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lk2/t;->f:Ljava/util/regex/Pattern;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    sub-int v3, v2, v1

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eq v1, p1, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, ""

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method

.method public static b(ZLjava/lang/String;)[Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lk2/t;->e:Ljava/util/regex/Pattern;

    :goto_0
    invoke-static {p1, p0}, Lk2/t;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lk2/t;->f:Ljava/util/regex/Pattern;

    goto :goto_0
.end method
