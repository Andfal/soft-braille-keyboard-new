.class Lk2/h0$a;
.super Lcom/androlua/util/AsyncTaskX;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk2/h0;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androlua/util/AsyncTaskX<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lk2/h0;


# direct methods
.method constructor <init>(Lk2/h0;)V
    .locals 0

    iput-object p1, p0, Lk2/h0$a;->a:Lk2/h0;

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lk2/h0$a;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string p1, "init2"

    const-string v0, "Pinyin"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lk2/h0$a;->a:Lk2/h0;

    const v1, 0x7f06000e

    invoke-static {p1, v1}, Lk2/h0;->f(Lk2/h0;I)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v1}, Lk2/h0;->e(Lk2/h0;Ljava/util/Map;)V

    iget-object p1, p0, Lk2/h0$a;->a:Lk2/h0;

    invoke-static {p1}, Lk2/h0;->b(Lk2/h0;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-static {p1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v1, p0, Lk2/h0$a;->a:Lk2/h0;

    invoke-static {v1}, Lk2/h0;->b(Lk2/h0;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    const v2, 0x7f07089f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk2/h0$a;->a:Lk2/h0;

    invoke-static {p1}, Lk2/h0;->b(Lk2/h0;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v2, p0, Lk2/h0$a;->a:Lk2/h0;

    invoke-static {v2}, Lk2/h0;->b(Lk2/h0;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    const v3, 0x7f0701fa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lk2/h0$a;->a:Lk2/h0;

    invoke-static {v4}, Lk2/h0;->b(Lk2/h0;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v4

    const v5, 0x7f070279

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lk2/h0$a;->a:Lk2/h0;

    invoke-static {v2}, Lk2/h0;->a(Lk2/h0;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lk2/h0;->g(Lk2/h0;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    iget-object p1, p0, Lk2/h0$a;->a:Lk2/h0;

    invoke-static {p1}, Lk2/h0;->b(Lk2/h0;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v2, p0, Lk2/h0$a;->a:Lk2/h0;

    invoke-static {v2}, Lk2/h0;->b(Lk2/h0;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lk2/h0$a;->a:Lk2/h0;

    invoke-static {v3}, Lk2/h0;->b(Lk2/h0;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    const v4, 0x7f07027a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lk2/h0$a;->a:Lk2/h0;

    invoke-static {v2}, Lk2/h0;->c(Lk2/h0;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lk2/h0;->g(Lk2/h0;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    :cond_0
    const-string p1, "end2"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lk2/h0$a;->a:Lk2/h0;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lk2/h0;->d(Lk2/h0;Z)V

    const/4 p1, 0x0

    return-object p1
.end method
