.class Lc/g$c;
.super Lc/g$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final f:D

.field private final g:Lc/g$u;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZDLc/g$u;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/g$v;-><init>(Ljava/lang/String;Z)V

    iput-wide p3, p0, Lc/g$c;->f:D

    iput-object p5, p0, Lc/g$c;->g:Lc/g$u;

    return-void
.end method


# virtual methods
.method public a(Lc/g;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0, p1, p2, p4}, Lc/g$v;->b(Lc/g;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    instance-of p3, p1, Ljava/lang/Number;

    if-nez p3, :cond_1

    return p2

    :cond_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p3

    sget-object p1, Lc/g$a;->a:[I

    iget-object v0, p0, Lc/g$c;->g:Lc/g$u;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    return p2

    :pswitch_0
    iget-wide v1, p0, Lc/g$c;->f:D

    cmpg-double p1, p3, v1

    if-gez p1, :cond_2

    const/4 p2, 0x1

    :cond_2
    return p2

    :pswitch_1
    iget-wide v1, p0, Lc/g$c;->f:D

    cmpg-double p1, p3, v1

    if-gtz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    return p2

    :pswitch_2
    iget-wide v1, p0, Lc/g$c;->f:D

    cmpl-double p1, p3, v1

    if-lez p1, :cond_4

    const/4 p2, 0x1

    :cond_4
    return p2

    :pswitch_3
    iget-wide v1, p0, Lc/g$c;->f:D

    cmpl-double p1, p3, v1

    if-ltz p1, :cond_5

    const/4 p2, 0x1

    :cond_5
    return p2

    :pswitch_4
    iget-wide v1, p0, Lc/g$c;->f:D

    cmpl-double p1, p3, v1

    if-eqz p1, :cond_6

    const/4 p2, 0x1

    :cond_6
    return p2

    :pswitch_5
    iget-wide v1, p0, Lc/g$c;->f:D

    cmpl-double p1, p3, v1

    if-nez p1, :cond_7

    const/4 p2, 0x1

    :cond_7
    return p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
