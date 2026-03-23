.class public Lcom/nirenr/talkman/util/HtmlUtil;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/talkman/util/HtmlUtil$OnDoneListener;
    }
.end annotation


# static fields
.field private static t:Lcom/nirenr/talkman/util/HtmlUtil;


# instance fields
.field private final a:Landroid/speech/tts/TextToSpeech;

.field private final b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/regex/Pattern;

.field private e:Ljava/util/regex/Pattern;

.field private f:Ljava/util/regex/Pattern;

.field private g:Ljava/util/regex/Pattern;

.field private h:Ljava/util/regex/Pattern;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/regex/Pattern;

.field private k:Ljava/util/regex/Pattern;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/util/regex/Pattern;

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/nirenr/talkman/util/HtmlUtil$OnDoneListener;

.field private r:I

.field private s:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    const-string v0, "<p>([^<>]*)</p>|<h\\d>([^<>]*)</h\\d>"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->d:Ljava/util/regex/Pattern;

    const-string v0, "<script.*?</script>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->e:Ljava/util/regex/Pattern;

    const-string v0, "<.*?>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->f:Ljava/util/regex/Pattern;

    const-string v0, "<meta[^<>]*/>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->g:Ljava/util/regex/Pattern;

    const-string v0, "<head.*?</head>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->h:Ljava/util/regex/Pattern;

    const-string v0, "<title>([^<>]*)</title>"

    iput-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->i:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->j:Ljava/util/regex/Pattern;

    const-string v0, "<[^<>]*onclick=[^<>]*>[^<>]*</[^<>]*>"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->k:Ljava/util/regex/Pattern;

    const-string v0, "<a[^<>]*href=\"([^\'\"]*)\"[^<>]*>([^<>]*)</a>"

    iput-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->o:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->p:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/nirenr/talkman/util/HtmlUtil;->b:Landroid/content/Context;

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/nirenr/talkman/util/HtmlUtil$a;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/util/HtmlUtil$a;-><init>(Lcom/nirenr/talkman/util/HtmlUtil;)V

    invoke-direct {v0, p1, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/nirenr/talkman/util/HtmlUtil;
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/util/HtmlUtil;->t:Lcom/nirenr/talkman/util/HtmlUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nirenr/talkman/util/HtmlUtil;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/util/HtmlUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nirenr/talkman/util/HtmlUtil;->t:Lcom/nirenr/talkman/util/HtmlUtil;

    :cond_0
    sget-object p0, Lcom/nirenr/talkman/util/HtmlUtil;->t:Lcom/nirenr/talkman/util/HtmlUtil;

    return-object p0
.end method

.method private g([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    const-string v4, "*"

    const-string v5, ".*"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nirenr/talkman/util/HtmlUtil;->o:Ljava/util/regex/Pattern;

    iget-object v5, p0, Lcom/nirenr/talkman/util/HtmlUtil;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    :cond_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string p1, "/"

    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nirenr/talkman/util/HtmlUtil;->c()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/util/HtmlUtil;->g([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->b:Landroid/content/Context;

    invoke-static {v0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/util/HtmlUtil;->b:Landroid/content/Context;

    const v2, 0x7f070472

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/util/HtmlUtil;->b:Landroid/content/Context;

    const v3, 0x7f070473

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nirenr/talkman/util/HtmlUtil;->e()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/util/HtmlUtil;->g([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->b:Landroid/content/Context;

    invoke-static {v0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/util/HtmlUtil;->b:Landroid/content/Context;

    const v2, 0x7f07052b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/util/HtmlUtil;->b:Landroid/content/Context;

    const v3, 0x7f07052c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->j:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/nirenr/talkman/util/HtmlUtil;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->l:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->s:Z

    return v0
.end method

.method public i(Lcom/nirenr/talkman/util/HtmlUtil$OnDoneListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/HtmlUtil;->q:Lcom/nirenr/talkman/util/HtmlUtil$OnDoneListener;

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "talkman"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->r:I

    iput-object p1, p0, Lcom/nirenr/talkman/util/HtmlUtil;->c:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->s:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "\r?\n"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "<a.*?</a>"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lua"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/nirenr/talkman/util/HtmlUtil;->q:Lcom/nirenr/talkman/util/HtmlUtil$OnDoneListener;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/nirenr/talkman/util/HtmlUtil;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/util/HtmlUtil;->m:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/nirenr/talkman/util/HtmlUtil$OnDoneListener;->onDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/nirenr/talkman/util/HtmlUtil;->m(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/nirenr/talkman/util/HtmlUtil$c;

    invoke-direct {v1, p0, v0}, Lcom/nirenr/talkman/util/HtmlUtil$c;-><init>(Lcom/nirenr/talkman/util/HtmlUtil;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/nirenr/talkman/util/HtmlUtil;->m:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/util/HtmlUtil;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nirenr/talkman/util/HtmlUtil;->t:Lcom/nirenr/talkman/util/HtmlUtil;

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    iget-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public m(Ljava/lang/String;)I
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "utteranceId"

    const-string v2, "123"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "volume"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "streamType"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/nirenr/talkman/util/HtmlUtil;->a:Landroid/speech/tts/TextToSpeech;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v0, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->s:Z

    iget-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/nirenr/talkman/util/HtmlUtil;->j(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/nirenr/talkman/util/HtmlUtil;->m:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/util/HtmlUtil;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "luaj"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/nirenr/talkman/util/HtmlUtil;->m:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/nirenr/talkman/util/HttpUtil;->f(Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)Lcom/nirenr/talkman/util/HttpUtil$d;

    return-void
.end method

.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "talkman"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->r:I

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/nirenr/talkman/util/HtmlUtil;->c:Ljava/lang/String;

    const-string v0, "\r?\n"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "<a.*?</a>"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lua"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/nirenr/talkman/util/HtmlUtil;->q:Lcom/nirenr/talkman/util/HtmlUtil$OnDoneListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nirenr/talkman/util/HtmlUtil;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/util/HtmlUtil;->m:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/nirenr/talkman/util/HtmlUtil$OnDoneListener;->onDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/nirenr/talkman/util/HtmlUtil;->m(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/nirenr/talkman/util/HtmlUtil$b;

    invoke-direct {v1, p0, v0}, Lcom/nirenr/talkman/util/HtmlUtil$b;-><init>(Lcom/nirenr/talkman/util/HtmlUtil;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/nirenr/talkman/util/HtmlUtil;->r:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/util/HtmlUtil;->m:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/util/HtmlUtil;->o(Ljava/lang/String;)V

    iget p1, p0, Lcom/nirenr/talkman/util/HtmlUtil;->r:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/nirenr/talkman/util/HtmlUtil;->r:I

    :cond_3
    :goto_0
    return-void
.end method

.method public onDone(Ljava/lang/String;)V
    .locals 1

    const-string p1, "luaj"

    const-string v0, "onDone: "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/nirenr/talkman/util/HtmlUtil;->q:Lcom/nirenr/talkman/util/HtmlUtil$OnDoneListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/nirenr/talkman/util/HtmlUtil$OnDoneListener;->onDone()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    const-string p1, "luaj"

    const-string v0, "onError: "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 1

    const-string p1, "luaj"

    const-string v0, "onStart: "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->a:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nirenr/talkman/util/HtmlUtil;->s:Z

    return-void
.end method
