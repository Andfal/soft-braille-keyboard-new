.class Lh2/h$a;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/h;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lh2/h;


# direct methods
.method constructor <init>(Lh2/h;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lh2/h$a;->a:Lh2/h;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 9

    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lh2/h$a;->a:Lh2/h;

    invoke-static {v0}, Lh2/h;->h(Lh2/h;)I

    move-result v0

    const v1, 0x7f070670

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lh2/h$a;->a:Lh2/h;

    invoke-static {v0}, Lh2/h;->g(Lh2/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/nirenr/talkman/o;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/nirenr/talkman/o$b;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lcom/nirenr/talkman/o$b;->a()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/nirenr/talkman/o$b;->c()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0}, Lcom/nirenr/talkman/o$b;->b()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xea60

    const-string p1, "GTM+0"

    cmp-long v1, v3, v5

    if-gez v1, :cond_1

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v5

    const v6, 0x7f0701d7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :goto_0
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_1

    :cond_1
    const-wide/32 v5, 0x36ee80

    cmp-long v1, v3, v5

    if-gez v1, :cond_2

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v5

    const v6, 0x7f0701d6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v5

    const v6, 0x7f0701d5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    :goto_1
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lh2/h$a;->a:Lh2/h;

    invoke-static {v6}, Lh2/h;->a(Lh2/h;)Ljava/text/SimpleDateFormat;

    move-result-object v6

    invoke-virtual {v0}, Lcom/nirenr/talkman/o$b;->c()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v2, p0, Lh2/h$a;->a:Lh2/h;

    invoke-static {v2}, Lh2/h;->b(Lh2/h;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nirenr/talkman/o$b;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v5, v2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v5, v1

    const v0, 0x7f070686

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x200

    if-le v0, v1, :cond_4

    const/16 v0, 0x1f4

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lh2/h$a;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-object p1
.end method
