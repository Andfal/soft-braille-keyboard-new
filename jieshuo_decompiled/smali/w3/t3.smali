.class Lw3/t3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field A:Lw3/s3$a;

.field private B:Z

.field private C:Z

.field private D:I

.field private E:Lw3/m2;

.field private F:Ljava/lang/String;

.field private G:I

.field private a:Z

.field b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:D

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:[C

.field private k:I

.field private l:Lw3/k2;

.field private final m:[I

.field private n:I

.field private o:Z

.field private p:I

.field private q:I

.field r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/io/Reader;

.field private u:[C

.field private v:I

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lw3/m2;Ljava/io/Reader;Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lw3/t3;->c:Ljava/lang/String;

    const/16 v1, 0x80

    new-array v1, v1, [C

    iput-object v1, p0, Lw3/t3;->j:[C

    new-instance v1, Lw3/k2;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Lw3/k2;-><init>(I)V

    iput-object v1, p0, Lw3/t3;->l:Lw3/k2;

    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lw3/t3;->m:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lw3/t3;->o:Z

    iput v1, p0, Lw3/t3;->p:I

    const/4 v2, -0x1

    iput v2, p0, Lw3/t3;->q:I

    iput-object v0, p0, Lw3/t3;->F:Ljava/lang/String;

    iput v2, p0, Lw3/t3;->G:I

    iput-object p1, p0, Lw3/t3;->E:Lw3/m2;

    iput p4, p0, Lw3/t3;->r:I

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_0
    iput-object p2, p0, Lw3/t3;->t:Ljava/io/Reader;

    const/16 p1, 0x200

    new-array p1, p1, [C

    iput-object p1, p0, Lw3/t3;->u:[C

    iput v1, p0, Lw3/t3;->v:I

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_2
    iput-object p3, p0, Lw3/t3;->s:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lw3/t3;->v:I

    :goto_0
    iput v1, p0, Lw3/t3;->x:I

    iput v1, p0, Lw3/t3;->w:I

    return-void
.end method

.method private A()Z
    .locals 2

    iget v0, p0, Lw3/t3;->G:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private G()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lw3/t3;->H(Ljava/lang/String;)V

    return-void
.end method

.method private H(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lw3/t3;->E:Lw3/m2;

    iget-object v0, v0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v0}, Lw3/j;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw3/t3;->t:Ljava/io/Reader;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lw3/t3;->F:Ljava/lang/String;

    iget p1, p0, Lw3/t3;->w:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lw3/t3;->G:I

    :cond_0
    return-void
.end method

.method private I(I)Z
    .locals 1

    invoke-direct {p0}, Lw3/t3;->i()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget p1, p0, Lw3/t3;->x:I

    iput p1, p0, Lw3/t3;->z:I

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-direct {p0, v0}, Lw3/t3;->X(I)V

    const/4 p1, 0x0

    return p1
.end method

.method private J()I
    .locals 1

    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v0

    invoke-direct {p0, v0}, Lw3/t3;->W(I)V

    return v0
.end method

.method private L()Z
    .locals 3

    :cond_0
    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v0

    :cond_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-direct {p0, v0}, Lw3/t3;->a(I)V

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lw3/t3;->J()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v0

    invoke-direct {p0, v0}, Lw3/t3;->a(I)V

    invoke-direct {p0}, Lw3/t3;->J()I

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v0

    invoke-direct {p0, v0}, Lw3/t3;->a(I)V

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lw3/t3;->k:I

    const/4 v1, 0x0

    iput-object v1, p0, Lw3/t3;->c:Ljava/lang/String;

    iget-object v1, p0, Lw3/t3;->E:Lw3/m2;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lw3/m2;->k(Ljava/lang/String;)V

    return v0
.end method

.method private M()Z
    .locals 4

    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    invoke-direct {p0, v0}, Lw3/t3;->a(I)V

    const/16 v3, 0x3c

    if-eq v0, v3, :cond_1

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_2

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :cond_2
    :goto_1
    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lw3/t3;->k:I

    const/4 v1, 0x0

    iput-object v1, p0, Lw3/t3;->c:Ljava/lang/String;

    iget-object v1, p0, Lw3/t3;->E:Lw3/m2;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lw3/m2;->k(Ljava/lang/String;)V

    return v0
.end method

.method private N()Z
    .locals 3

    :cond_0
    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0, v0}, Lw3/t3;->a(I)V

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lw3/t3;->J()I

    move-result v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v0

    invoke-direct {p0, v0}, Lw3/t3;->a(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lw3/t3;->k:I

    const/4 v1, 0x0

    iput-object v1, p0, Lw3/t3;->c:Ljava/lang/String;

    iget-object v1, p0, Lw3/t3;->E:Lw3/m2;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lw3/m2;->k(Ljava/lang/String;)V

    return v0
.end method

.method private O(I)Z
    .locals 2

    :cond_0
    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0, v0}, Lw3/t3;->a(I)V

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lw3/t3;->k:I

    const/4 v0, 0x0

    iput-object v0, p0, Lw3/t3;->c:Ljava/lang/String;

    iget-object v0, p0, Lw3/t3;->E:Lw3/m2;

    const-string v1, "msg.XML.bad.form"

    invoke-virtual {v0, v1}, Lw3/m2;->k(Ljava/lang/String;)V

    return p1
.end method

.method private Q()Z
    .locals 3

    :cond_0
    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v0

    :cond_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-direct {p0, v0}, Lw3/t3;->a(I)V

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lw3/t3;->J()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v0

    invoke-direct {p0, v0}, Lw3/t3;->a(I)V

    invoke-direct {p0}, Lw3/t3;->J()I

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v0

    invoke-direct {p0, v0}, Lw3/t3;->a(I)V

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lw3/t3;->k:I

    const/4 v1, 0x0

    iput-object v1, p0, Lw3/t3;->c:Ljava/lang/String;

    iget-object v1, p0, Lw3/t3;->E:Lw3/m2;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lw3/m2;->k(Ljava/lang/String;)V

    return v0
.end method

.method private R()V
    .locals 2

    :goto_0
    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lw3/t3;->W(I)V

    iget v0, p0, Lw3/t3;->x:I

    iput v0, p0, Lw3/t3;->z:I

    return-void
.end method

.method private static S(Ljava/lang/String;IZ)I
    .locals 1

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_0

    invoke-static {p0}, Lw3/t3;->U(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, p2}, Lw3/t3;->T(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method private static T(Ljava/lang/String;Z)I
    .locals 11

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x2d

    const/16 v2, 0x2c

    const/16 v3, 0x2b

    const/16 v4, 0x2a

    const/16 v5, 0x20

    const/16 v6, 0x1f

    const/16 v7, 0x1e

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "default"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v10, 0x2d

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "function"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v10, 0x2c

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "instanceof"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v10, 0x2b

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "debugger"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v10, 0x2a

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "interface"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v10, 0x29

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "yield"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v10, 0x28

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "while"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v10, 0x27

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "throw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v10, 0x26

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "super"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v10, 0x25

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v10, 0x24

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "const"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v10, 0x23

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "class"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v10, 0x22

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "catch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v10, 0x21

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "break"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v10, 0x20

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "await"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v10, 0x1f

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "with"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v10, 0x1e

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "void"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v10, 0x1d

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v10, 0x1c

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "this"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v10, 0x1b

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v10, 0x1a

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "enum"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v10, 0x19

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "else"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v10, 0x18

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "case"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v10, 0x17

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "var"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v10, 0x16

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "try"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v10, 0x15

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "new"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v10, 0x14

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "let"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v10, 0x13

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "for"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v10, 0x12

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v10, 0x11

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "if"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v10, 0x10

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "do"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v10, 0xf

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "private"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v10, 0xe

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "continue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v10, 0xd

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "protected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v10, 0xc

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v10, 0xb

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "finally"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v10, 0xa

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "typeof"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v10, 0x9

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "switch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v10, 0x8

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "static"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_0

    :cond_26
    const/4 v10, 0x7

    goto :goto_0

    :sswitch_27
    const-string v0, "implements"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto :goto_0

    :cond_27
    const/4 v10, 0x6

    goto :goto_0

    :sswitch_28
    const-string v0, "return"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto :goto_0

    :cond_28
    const/4 v10, 0x5

    goto :goto_0

    :sswitch_29
    const-string v0, "public"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto :goto_0

    :cond_29
    const/4 v10, 0x4

    goto :goto_0

    :sswitch_2a
    const-string v0, "import"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto :goto_0

    :cond_2a
    const/4 v10, 0x3

    goto :goto_0

    :sswitch_2b
    const-string v0, "export"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_0

    :cond_2b
    const/4 v10, 0x2

    goto :goto_0

    :sswitch_2c
    const-string v0, "extends"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto :goto_0

    :cond_2c
    const/4 v10, 0x1

    goto :goto_0

    :sswitch_2d
    const-string v0, "delete"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_0

    :cond_2d
    const/4 v10, 0x0

    :goto_0
    const/16 p0, 0x82

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/16 v1, 0x77

    goto/16 :goto_3

    :pswitch_1
    const/16 v1, 0x70

    goto/16 :goto_3

    :pswitch_2
    const/16 v1, 0x35

    goto/16 :goto_3

    :pswitch_3
    const/16 v1, 0xa3

    goto/16 :goto_3

    :pswitch_4
    if-eqz p1, :cond_2e

    goto :goto_1

    :pswitch_5
    const/16 v1, 0x49

    goto/16 :goto_3

    :pswitch_6
    const/16 v1, 0x78

    goto/16 :goto_3

    :pswitch_7
    const/16 v1, 0x32

    goto/16 :goto_3

    :pswitch_8
    const/16 v1, 0x2c

    goto/16 :goto_3

    :pswitch_9
    const/16 v1, 0x9d

    goto/16 :goto_3

    :goto_1
    :pswitch_a
    const/16 v1, 0x82

    goto/16 :goto_3

    :pswitch_b
    const/16 v1, 0x7f

    goto/16 :goto_3

    :pswitch_c
    const/16 v1, 0x7b

    goto/16 :goto_3

    :pswitch_d
    const/16 v1, 0x7e

    goto/16 :goto_3

    :pswitch_e
    const/16 v1, 0x81

    goto/16 :goto_3

    :pswitch_f
    const/16 v1, 0x2b

    goto :goto_3

    :pswitch_10
    const/16 v1, 0x2a

    goto :goto_3

    :pswitch_11
    const/16 v1, 0x74

    goto :goto_3

    :pswitch_12
    const/16 v1, 0x76

    goto :goto_3

    :pswitch_13
    const/16 v1, 0x7d

    goto :goto_3

    :pswitch_14
    const/16 v1, 0x53

    goto :goto_3

    :pswitch_15
    const/16 v1, 0x1e

    goto :goto_3

    :pswitch_16
    const/16 v1, 0x9c

    goto :goto_3

    :pswitch_17
    const/16 v1, 0x7a

    goto :goto_3

    :pswitch_18
    const/16 v1, 0x34

    goto :goto_3

    :pswitch_19
    const/16 v1, 0x73

    goto :goto_3

    :pswitch_1a
    const/16 v1, 0x79

    goto :goto_3

    :pswitch_1b
    if-eqz p1, :cond_2e

    goto :goto_1

    :pswitch_1c
    const/16 v1, 0x7c

    goto :goto_3

    :pswitch_1d
    if-eqz p1, :cond_2e

    goto :goto_1

    :pswitch_1e
    if-eqz p1, :cond_2e

    goto :goto_1

    :pswitch_1f
    const/16 v1, 0x80

    goto :goto_3

    :pswitch_20
    const/16 v1, 0x20

    goto :goto_3

    :pswitch_21
    const/16 v1, 0x75

    goto :goto_3

    :pswitch_22
    if-eqz p1, :cond_2e

    goto :goto_1

    :pswitch_23
    if-eqz p1, :cond_2e

    goto :goto_1

    :pswitch_24
    const/4 v1, 0x4

    goto :goto_3

    :pswitch_25
    if-eqz p1, :cond_2e

    goto :goto_1

    :cond_2e
    :goto_2
    const/4 v1, 0x0

    goto :goto_3

    :pswitch_26
    const/16 v1, 0x1f

    :goto_3
    :pswitch_27
    if-nez v1, :cond_2f

    return v9

    :cond_2f
    and-int/lit16 p0, v1, 0xff

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_2d
        -0x4dd2db67 -> :sswitch_2c
        -0x4cd6ec4c -> :sswitch_2b
        -0x469e8c5b -> :sswitch_2a
        -0x3a424d97 -> :sswitch_29
        -0x37b1c2d0 -> :sswitch_28
        -0x368fa850 -> :sswitch_27
        -0x35323192 -> :sswitch_26
        -0x350448cc -> :sswitch_25
        -0x3330496f -> :sswitch_24
        -0x32dbb67d -> :sswitch_23
        -0x301acbba -> :sswitch_22
        -0x24459452 -> :sswitch_21
        -0x21ced359 -> :sswitch_20
        -0x12beda7d -> :sswitch_1f
        0xc8b -> :sswitch_1e
        0xd1d -> :sswitch_1d
        0xd25 -> :sswitch_1c
        0x18cc9 -> :sswitch_1b
        0x1a21b -> :sswitch_1a
        0x1a9a0 -> :sswitch_19
        0x1c1bb -> :sswitch_18
        0x1c727 -> :sswitch_17
        0x2e7b30 -> :sswitch_16
        0x2f8d39 -> :sswitch_15
        0x2f9501 -> :sswitch_14
        0x33c587 -> :sswitch_13
        0x364e9e -> :sswitch_12
        0x36758e -> :sswitch_11
        0x375194 -> :sswitch_10
        0x37b0c6 -> :sswitch_f
        0x58e7956 -> :sswitch_e
        0x59a58ff -> :sswitch_d
        0x5a0eebb -> :sswitch_c
        0x5a5a978 -> :sswitch_b
        0x5a73763 -> :sswitch_a
        0x5cb1923 -> :sswitch_9
        0x68b6f7b -> :sswitch_8
        0x693a6e6 -> :sswitch_7
        0x6bdcb31 -> :sswitch_6
        0x6da5f8d -> :sswitch_5
        0x1df56d39 -> :sswitch_4
        0x20a6f421 -> :sswitch_3
        0x35c3d12c -> :sswitch_2
        0x524f73d8 -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_26
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_a
        :pswitch_10
        :pswitch_f
        :pswitch_27
        :pswitch_e
        :pswitch_d
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static U(Ljava/lang/String;)I
    .locals 14

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x35

    const/16 v2, 0x34

    const/16 v3, 0x32

    const/16 v4, 0x2d

    const/16 v5, 0x2c

    const/16 v6, 0x2b

    const/16 v7, 0x2a

    const/16 v8, 0x20

    const/16 v9, 0x1f

    const/16 v10, 0x1e

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v13, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "abstract"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v13, 0x3c

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "default"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v13, 0x3b

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "function"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v13, 0x3a

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "transient"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v13, 0x39

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "instanceof"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v13, 0x38

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "debugger"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v13, 0x37

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "interface"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v13, 0x36

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "yield"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v13, 0x35

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "while"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v13, 0x34

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "throw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v13, 0x33

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "super"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v13, 0x32

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "short"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v13, 0x31

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v13, 0x30

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "final"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v13, 0x2f

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v13, 0x2e

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "const"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v13, 0x2d

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "class"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v13, 0x2c

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "catch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v13, 0x2b

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "break"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v13, 0x2a

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v13, 0x29

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "with"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v13, 0x28

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "void"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v13, 0x27

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v13, 0x26

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "this"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v13, 0x25

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v13, 0x24

    goto/16 :goto_0

    :sswitch_19
    const-string v0, "long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v13, 0x23

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, "goto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v13, 0x22

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, "enum"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v13, 0x21

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, "else"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v13, 0x20

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, "char"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v13, 0x1f

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "case"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v13, 0x1e

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, "byte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v13, 0x1d

    goto/16 :goto_0

    :sswitch_20
    const-string v0, "var"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v13, 0x1c

    goto/16 :goto_0

    :sswitch_21
    const-string v0, "try"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v13, 0x1b

    goto/16 :goto_0

    :sswitch_22
    const-string v0, "new"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v13, 0x1a

    goto/16 :goto_0

    :sswitch_23
    const-string v0, "let"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v13, 0x19

    goto/16 :goto_0

    :sswitch_24
    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v13, 0x18

    goto/16 :goto_0

    :sswitch_25
    const-string v0, "for"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v13, 0x17

    goto/16 :goto_0

    :sswitch_26
    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v13, 0x16

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "if"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v13, 0x15

    goto/16 :goto_0

    :sswitch_28
    const-string v0, "do"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v13, 0x14

    goto/16 :goto_0

    :sswitch_29
    const-string v0, "private"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v13, 0x13

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, "continue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v13, 0x12

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "protected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v13, 0x11

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v13, 0x10

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "finally"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v13, 0xf

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "typeof"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v13, 0xe

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "throws"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v13, 0xd

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "switch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v13, 0xc

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "static"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v13, 0xb

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "implements"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v13, 0xa

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "return"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v13, 0x9

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "public"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v13, 0x8

    goto/16 :goto_0

    :sswitch_35
    const-string v0, "native"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    goto :goto_0

    :cond_35
    const/4 v13, 0x7

    goto :goto_0

    :sswitch_36
    const-string v0, "import"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto :goto_0

    :cond_36
    const/4 v13, 0x6

    goto :goto_0

    :sswitch_37
    const-string v0, "export"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    goto :goto_0

    :cond_37
    const/4 v13, 0x5

    goto :goto_0

    :sswitch_38
    const-string v0, "extends"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    goto :goto_0

    :cond_38
    const/4 v13, 0x4

    goto :goto_0

    :sswitch_39
    const-string v0, "double"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    goto :goto_0

    :cond_39
    const/4 v13, 0x3

    goto :goto_0

    :sswitch_3a
    const-string v0, "delete"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto :goto_0

    :cond_3a
    const/4 v13, 0x2

    goto :goto_0

    :sswitch_3b
    const-string v0, "synchronized"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    goto :goto_0

    :cond_3b
    const/4 v13, 0x1

    goto :goto_0

    :sswitch_3c
    const-string v0, "volatile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    goto :goto_0

    :cond_3c
    const/4 v13, 0x0

    :goto_0
    const/16 p0, 0x82

    packed-switch v13, :pswitch_data_0

    const/4 v1, 0x0

    goto/16 :goto_1

    :pswitch_0
    const/16 v1, 0x77

    goto/16 :goto_1

    :pswitch_1
    const/16 v1, 0x70

    goto/16 :goto_1

    :pswitch_2
    const/16 v1, 0xa3

    goto/16 :goto_1

    :pswitch_3
    const/16 v1, 0x49

    goto/16 :goto_1

    :pswitch_4
    const/16 v1, 0x78

    goto/16 :goto_1

    :pswitch_5
    const/16 v1, 0x32

    goto/16 :goto_1

    :pswitch_6
    const/16 v1, 0x2c

    goto :goto_1

    :pswitch_7
    const/16 v1, 0x9d

    goto :goto_1

    :pswitch_8
    const/16 v1, 0x7f

    goto :goto_1

    :pswitch_9
    const/16 v1, 0x7b

    goto :goto_1

    :pswitch_a
    const/16 v1, 0x7e

    goto :goto_1

    :pswitch_b
    const/16 v1, 0x81

    goto :goto_1

    :pswitch_c
    const/16 v1, 0x2d

    goto :goto_1

    :pswitch_d
    const/16 v1, 0x2b

    goto :goto_1

    :pswitch_e
    const/16 v1, 0x2a

    goto :goto_1

    :pswitch_f
    const/16 v1, 0x74

    goto :goto_1

    :pswitch_10
    const/16 v1, 0x76

    goto :goto_1

    :pswitch_11
    const/16 v1, 0x7d

    goto :goto_1

    :pswitch_12
    const/16 v1, 0x53

    goto :goto_1

    :pswitch_13
    const/16 v1, 0x1e

    goto :goto_1

    :pswitch_14
    const/16 v1, 0x9c

    goto :goto_1

    :pswitch_15
    const/16 v1, 0x7a

    goto :goto_1

    :pswitch_16
    const/16 v1, 0x34

    goto :goto_1

    :pswitch_17
    const/16 v1, 0x73

    goto :goto_1

    :pswitch_18
    const/16 v1, 0x79

    goto :goto_1

    :pswitch_19
    const/16 v1, 0x7c

    goto :goto_1

    :pswitch_1a
    const/16 v1, 0x80

    goto :goto_1

    :pswitch_1b
    const/16 v1, 0x20

    goto :goto_1

    :pswitch_1c
    const/16 v1, 0x75

    goto :goto_1

    :pswitch_1d
    const/4 v1, 0x4

    goto :goto_1

    :pswitch_1e
    const/16 v1, 0x82

    goto :goto_1

    :pswitch_1f
    const/16 v1, 0x1f

    :goto_1
    :pswitch_20
    if-nez v1, :cond_3d

    return v12

    :cond_3d
    and-int/lit16 p0, v1, 0xff

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x70890264 -> :sswitch_3c
        -0x576a7aec -> :sswitch_3b
        -0x4f997a55 -> :sswitch_3a
        -0x4f08842f -> :sswitch_39
        -0x4dd2db67 -> :sswitch_38
        -0x4cd6ec4c -> :sswitch_37
        -0x469e8c5b -> :sswitch_36
        -0x3ebdafe9 -> :sswitch_35
        -0x3a424d97 -> :sswitch_34
        -0x37b1c2d0 -> :sswitch_33
        -0x368fa850 -> :sswitch_32
        -0x35323192 -> :sswitch_31
        -0x350448cc -> :sswitch_30
        -0x341ec9b3 -> :sswitch_2f
        -0x3330496f -> :sswitch_2e
        -0x32dbb67d -> :sswitch_2d
        -0x301acbba -> :sswitch_2c
        -0x24459452 -> :sswitch_2b
        -0x21ced359 -> :sswitch_2a
        -0x12beda7d -> :sswitch_29
        0xc8b -> :sswitch_28
        0xd1d -> :sswitch_27
        0xd25 -> :sswitch_26
        0x18cc9 -> :sswitch_25
        0x197ef -> :sswitch_24
        0x1a21b -> :sswitch_23
        0x1a9a0 -> :sswitch_22
        0x1c1bb -> :sswitch_21
        0x1c727 -> :sswitch_20
        0x2e6108 -> :sswitch_1f
        0x2e7b30 -> :sswitch_1e
        0x2e9356 -> :sswitch_1d
        0x2f8d39 -> :sswitch_1c
        0x2f9501 -> :sswitch_1b
        0x308163 -> :sswitch_1a
        0x32c67c -> :sswitch_19
        0x33c587 -> :sswitch_18
        0x364e9e -> :sswitch_17
        0x36758e -> :sswitch_16
        0x375194 -> :sswitch_15
        0x37b0c6 -> :sswitch_14
        0x3db6c28 -> :sswitch_13
        0x59a58ff -> :sswitch_12
        0x5a0eebb -> :sswitch_11
        0x5a5a978 -> :sswitch_10
        0x5a73763 -> :sswitch_f
        0x5cb1923 -> :sswitch_e
        0x5cec176 -> :sswitch_d
        0x5d0225c -> :sswitch_c
        0x685847c -> :sswitch_b
        0x68b6f7b -> :sswitch_a
        0x693a6e6 -> :sswitch_9
        0x6bdcb31 -> :sswitch_8
        0x6da5f8d -> :sswitch_7
        0x1df56d39 -> :sswitch_6
        0x20a6f421 -> :sswitch_5
        0x35c3d12c -> :sswitch_4
        0x3ebfa28a -> :sswitch_3
        0x524f73d8 -> :sswitch_2
        0x5c13d641 -> :sswitch_1
        0x6749f022 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1e
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1e
        :pswitch_1e
        :pswitch_1c
        :pswitch_1e
        :pswitch_1b
        :pswitch_1a
        :pswitch_1e
        :pswitch_1e
        :pswitch_19
        :pswitch_1e
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_1e
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_1e
        :pswitch_10
        :pswitch_1e
        :pswitch_f
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_1e
        :pswitch_9
        :pswitch_8
        :pswitch_1e
        :pswitch_7
        :pswitch_6
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1e
        :pswitch_2
        :pswitch_20
        :pswitch_1e
        :pswitch_1
        :pswitch_0
        :pswitch_1e
    .end packed-switch
.end method

.method private final V(II)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lw3/t3;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sub-int/2addr p2, p1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lw3/t3;->u:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private W(I)V
    .locals 3

    iget v0, p0, Lw3/t3;->n:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lw3/t3;->m:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lw3/t3;->m:[I

    iget v1, p0, Lw3/t3;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lw3/t3;->n:I

    aput p1, v0, v1

    iget p1, p0, Lw3/t3;->x:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lw3/t3;->x:I

    return-void
.end method

.method private X(I)V
    .locals 3

    iget-object v0, p0, Lw3/t3;->m:[I

    iget v1, p0, Lw3/t3;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lw3/t3;->n:I

    aput p1, v0, v1

    iget p1, p0, Lw3/t3;->x:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lw3/t3;->x:I

    return-void
.end method

.method private a(I)V
    .locals 4

    iget v0, p0, Lw3/t3;->k:I

    iget-object v1, p0, Lw3/t3;->j:[C

    array-length v2, v1

    if-ne v0, v2, :cond_0

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lw3/t3;->j:[C

    :cond_0
    iget-object v1, p0, Lw3/t3;->j:[C

    int-to-char p1, p1

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lw3/t3;->k:I

    return-void
.end method

.method private b()Z
    .locals 3

    iget v0, p0, Lw3/t3;->n:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lw3/t3;->m:[I

    sub-int/2addr v0, v1

    aget v0, v2, v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private final c(I)I
    .locals 3

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lw3/t3;->s:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget v2, p0, Lw3/t3;->v:I

    if-lt p1, v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1

    :cond_2
    iget v1, p0, Lw3/t3;->v:I

    if-lt p1, v1, :cond_4

    iget v1, p0, Lw3/t3;->w:I

    :try_start_0
    invoke-direct {p0}, Lw3/t3;->e()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_3

    return v0

    :cond_3
    iget v0, p0, Lw3/t3;->w:I

    sub-int/2addr v1, v0

    sub-int/2addr p1, v1

    goto :goto_0

    :catch_0
    return v0

    :cond_4
    :goto_0
    iget-object v0, p0, Lw3/t3;->u:[C

    aget-char p1, v0, p1

    return p1
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\\u"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x4

    if-ge v2, v0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private e()Z
    .locals 5

    iget-object v0, p0, Lw3/t3;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_0
    iget v0, p0, Lw3/t3;->v:I

    iget-object v1, p0, Lw3/t3;->u:[C

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget v0, p0, Lw3/t3;->p:I

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lw3/t3;->A()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lw3/t3;->u:[C

    iget v1, p0, Lw3/t3;->p:I

    iget v3, p0, Lw3/t3;->v:I

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lw3/t3;->v:I

    iget v1, p0, Lw3/t3;->p:I

    sub-int/2addr v0, v1

    iput v0, p0, Lw3/t3;->v:I

    iget v0, p0, Lw3/t3;->w:I

    sub-int/2addr v0, v1

    iput v0, p0, Lw3/t3;->w:I

    iput v2, p0, Lw3/t3;->p:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lw3/t3;->u:[C

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    iget v3, p0, Lw3/t3;->v:I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lw3/t3;->u:[C

    :cond_2
    :goto_0
    iget-object v0, p0, Lw3/t3;->t:Ljava/io/Reader;

    iget-object v1, p0, Lw3/t3;->u:[C

    iget v3, p0, Lw3/t3;->v:I

    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-gez v0, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lw3/t3;->v:I

    add-int/2addr v1, v0

    iput v1, p0, Lw3/t3;->v:I

    const/4 v0, 0x1

    return v0
.end method

.method private g()I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lw3/t3;->h(Z)I

    move-result v0

    return v0
.end method

.method private h(Z)I
    .locals 6

    iget v0, p0, Lw3/t3;->n:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget p1, p0, Lw3/t3;->x:I

    add-int/2addr p1, v1

    iput p1, p0, Lw3/t3;->x:I

    iget-object p1, p0, Lw3/t3;->m:[I

    sub-int/2addr v0, v1

    iput v0, p0, Lw3/t3;->n:I

    aget p1, p1, v0

    return p1

    :cond_0
    :goto_0
    iget-object v0, p0, Lw3/t3;->s:Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    iget v3, p0, Lw3/t3;->w:I

    iget v4, p0, Lw3/t3;->v:I

    if-ne v3, v4, :cond_1

    iput-boolean v1, p0, Lw3/t3;->o:Z

    return v2

    :cond_1
    iget v4, p0, Lw3/t3;->x:I

    add-int/2addr v4, v1

    iput v4, p0, Lw3/t3;->x:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lw3/t3;->w:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lw3/t3;->w:I

    iget v3, p0, Lw3/t3;->v:I

    if-ne v0, v3, :cond_3

    invoke-direct {p0}, Lw3/t3;->e()Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lw3/t3;->o:Z

    return v2

    :cond_3
    iget v0, p0, Lw3/t3;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Lw3/t3;->x:I

    iget-object v0, p0, Lw3/t3;->u:[C

    iget v3, p0, Lw3/t3;->w:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lw3/t3;->w:I

    aget-char v0, v0, v3

    :goto_1
    iget v3, p0, Lw3/t3;->q:I

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-ltz v3, :cond_5

    if-ne v3, v4, :cond_4

    if-ne v0, v5, :cond_4

    iput v5, p0, Lw3/t3;->q:I

    goto :goto_0

    :cond_4
    iput v2, p0, Lw3/t3;->q:I

    iget v2, p0, Lw3/t3;->w:I

    sub-int/2addr v2, v1

    iput v2, p0, Lw3/t3;->p:I

    iget v2, p0, Lw3/t3;->r:I

    add-int/2addr v2, v1

    iput v2, p0, Lw3/t3;->r:I

    :cond_5
    const/16 v2, 0x7f

    if-gt v0, v2, :cond_7

    if-eq v0, v5, :cond_6

    if-ne v0, v4, :cond_a

    :cond_6
    :goto_2
    iput v0, p0, Lw3/t3;->q:I

    const/16 v0, 0xa

    goto :goto_3

    :cond_7
    const v2, 0xfeff

    if-ne v0, v2, :cond_8

    return v0

    :cond_8
    if-eqz p1, :cond_9

    invoke-static {v0}, Lw3/t3;->x(I)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_0

    :cond_9
    invoke-static {v0}, Lw3/u2;->A0(I)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    :goto_3
    return v0
.end method

.method private i()I
    .locals 5

    iget v0, p0, Lw3/t3;->n:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v2, p0, Lw3/t3;->x:I

    add-int/2addr v2, v1

    iput v2, p0, Lw3/t3;->x:I

    iget-object v2, p0, Lw3/t3;->m:[I

    sub-int/2addr v0, v1

    iput v0, p0, Lw3/t3;->n:I

    aget v0, v2, v0

    return v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lw3/t3;->s:Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    iget v3, p0, Lw3/t3;->w:I

    iget v4, p0, Lw3/t3;->v:I

    if-ne v3, v4, :cond_1

    iput-boolean v1, p0, Lw3/t3;->o:Z

    return v2

    :cond_1
    iget v2, p0, Lw3/t3;->x:I

    add-int/2addr v2, v1

    iput v2, p0, Lw3/t3;->x:I

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lw3/t3;->w:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lw3/t3;->w:I

    iget v3, p0, Lw3/t3;->v:I

    if-ne v0, v3, :cond_3

    invoke-direct {p0}, Lw3/t3;->e()Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lw3/t3;->o:Z

    return v2

    :cond_3
    iget v0, p0, Lw3/t3;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Lw3/t3;->x:I

    iget-object v0, p0, Lw3/t3;->u:[C

    iget v2, p0, Lw3/t3;->w:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lw3/t3;->w:I

    aget-char v0, v0, v2

    :goto_1
    const/16 v2, 0x7f

    const/16 v3, 0xa

    if-gt v0, v2, :cond_5

    if-eq v0, v3, :cond_4

    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    :cond_4
    :goto_2
    iput v0, p0, Lw3/t3;->q:I

    const/16 v0, 0xa

    goto :goto_3

    :cond_5
    const v2, 0xfeff

    if-ne v0, v2, :cond_6

    return v0

    :cond_6
    invoke-static {v0}, Lw3/t3;->x(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    invoke-static {v0}, Lw3/u2;->A0(I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    :goto_3
    return v0
.end method

.method private s()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lw3/t3;->x:I

    iput v0, p0, Lw3/t3;->z:I

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lw3/t3;->j:[C

    const/4 v2, 0x0

    iget v3, p0, Lw3/t3;->k:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private static v(I)Z
    .locals 3

    const/16 v0, 0x5a

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p0, v0, :cond_1

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method static w(I)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static x(I)Z
    .locals 1

    const/16 v0, 0x7f

    if-le p0, v0, :cond_0

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static y(I)Z
    .locals 4

    const/16 v0, 0x7f

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x1

    if-gt p0, v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    if-eq p0, v2, :cond_0

    const/16 v0, 0xb

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    const/16 v0, 0xa0

    if-eq p0, v0, :cond_3

    const v0, 0xfeff

    if-eq p0, v0, :cond_3

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    if-ne p0, v2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method static z(Ljava/lang/String;IZ)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lw3/t3;->S(Ljava/lang/String;IZ)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method final B()Z
    .locals 1

    iget-boolean v0, p0, Lw3/t3;->e:Z

    return v0
.end method

.method final C()Z
    .locals 1

    iget-boolean v0, p0, Lw3/t3;->h:Z

    return v0
.end method

.method final D()Z
    .locals 1

    iget-boolean v0, p0, Lw3/t3;->g:Z

    return v0
.end method

.method final E()Z
    .locals 1

    iget-boolean v0, p0, Lw3/t3;->f:Z

    return v0
.end method

.method F()Z
    .locals 1

    iget-boolean v0, p0, Lw3/t3;->B:Z

    return v0
.end method

.method K()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lw3/t3;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lw3/t3;->b:Ljava/lang/String;

    return-object v0
.end method

.method P(I)V
    .locals 8

    iget v0, p0, Lw3/t3;->y:I

    const/4 v1, 0x0

    iput v1, p0, Lw3/t3;->k:I

    const/16 v2, 0x66

    const-string v3, "msg.unterminated.re.lit"

    const/4 v4, 0x1

    if-ne p1, v2, :cond_0

    const/16 p1, 0x3d

    invoke-direct {p0, p1}, Lw3/t3;->a(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x18

    if-eq p1, v2, :cond_1

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_1
    invoke-direct {p0}, Lw3/t3;->J()I

    move-result p1

    const/16 v2, 0x2a

    if-ne p1, v2, :cond_2

    iget p1, p0, Lw3/t3;->x:I

    sub-int/2addr p1, v4

    iput p1, p0, Lw3/t3;->z:I

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lw3/t3;->j:[C

    iget v2, p0, Lw3/t3;->k:I

    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object p1, p0, Lw3/t3;->c:Ljava/lang/String;

    iget-object p1, p0, Lw3/t3;->E:Lw3/m2;

    invoke-virtual {p1, v3}, Lw3/m2;->z1(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v2

    const/16 v5, 0x2f

    if-ne v2, v5, :cond_9

    if-eqz p1, :cond_3

    goto :goto_4

    :cond_3
    iget p1, p0, Lw3/t3;->k:I

    :goto_2
    const/16 v2, 0x67

    invoke-direct {p0, v2}, Lw3/t3;->I(I)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_3
    invoke-direct {p0, v2}, Lw3/t3;->a(I)V

    goto :goto_2

    :cond_4
    const/16 v2, 0x69

    invoke-direct {p0, v2}, Lw3/t3;->I(I)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    const/16 v2, 0x6d

    invoke-direct {p0, v2}, Lw3/t3;->I(I)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    const/16 v2, 0x79

    invoke-direct {p0, v2}, Lw3/t3;->I(I)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    iget v2, p0, Lw3/t3;->k:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lw3/t3;->z:I

    invoke-direct {p0}, Lw3/t3;->J()I

    move-result v0

    invoke-static {v0}, Lw3/t3;->v(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lw3/t3;->E:Lw3/m2;

    const-string v2, "msg.invalid.re.flag"

    invoke-virtual {v0, v2}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_8
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lw3/t3;->j:[C

    invoke-direct {v0, v2, v1, p1}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lw3/t3;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lw3/t3;->j:[C

    iget v2, p0, Lw3/t3;->k:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lw3/t3;->b:Ljava/lang/String;

    return-void

    :cond_9
    :goto_4
    const/16 v5, 0xa

    if-eq v2, v5, :cond_f

    const/4 v6, -0x1

    if-ne v2, v6, :cond_a

    goto :goto_6

    :cond_a
    const/16 v7, 0x5c

    if-ne v2, v7, :cond_c

    invoke-direct {p0, v2}, Lw3/t3;->a(I)V

    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v2

    if-eq v2, v5, :cond_b

    if-ne v2, v6, :cond_e

    :cond_b
    invoke-direct {p0, v2}, Lw3/t3;->W(I)V

    iget p1, p0, Lw3/t3;->x:I

    sub-int/2addr p1, v4

    iput p1, p0, Lw3/t3;->z:I

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lw3/t3;->j:[C

    iget v2, p0, Lw3/t3;->k:I

    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object p1, p0, Lw3/t3;->c:Ljava/lang/String;

    iget-object p1, p0, Lw3/t3;->E:Lw3/m2;

    invoke-virtual {p1, v3}, Lw3/m2;->z1(Ljava/lang/String;)V

    return-void

    :cond_c
    const/16 v5, 0x5b

    if-ne v2, v5, :cond_d

    const/4 p1, 0x1

    goto :goto_5

    :cond_d
    const/16 v5, 0x5d

    if-ne v2, v5, :cond_e

    const/4 p1, 0x0

    :cond_e
    :goto_5
    invoke-direct {p0, v2}, Lw3/t3;->a(I)V

    goto/16 :goto_1

    :cond_f
    :goto_6
    invoke-direct {p0, v2}, Lw3/t3;->W(I)V

    iget p1, p0, Lw3/t3;->x:I

    sub-int/2addr p1, v4

    iput p1, p0, Lw3/t3;->z:I

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lw3/t3;->j:[C

    iget v2, p0, Lw3/t3;->k:I

    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object p1, p0, Lw3/t3;->c:Ljava/lang/String;

    iget-object p1, p0, Lw3/t3;->E:Lw3/m2;

    invoke-virtual {p1, v3}, Lw3/m2;->z1(Ljava/lang/String;)V

    return-void
.end method

.method final f()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lw3/t3;->s:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lw3/t3;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lw3/t3;->s:Ljava/lang/String;

    iget v1, p0, Lw3/t3;->y:I

    iget v2, p0, Lw3/t3;->z:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0}, Lw3/t3;->A()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw3/t3;->F:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lw3/t3;->u:[C

    iget v2, p0, Lw3/t3;->G:I

    invoke-virtual {p0}, Lw3/t3;->u()I

    move-result v3

    iget-object v4, p0, Lw3/t3;->F:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    iput v1, p0, Lw3/t3;->G:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method j()I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lw3/t3;->D:I

    iput-boolean v0, p0, Lw3/t3;->B:Z

    iput-boolean v0, p0, Lw3/t3;->C:Z

    invoke-direct {p0}, Lw3/t3;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lw3/t3;->W(I)V

    invoke-virtual {p0}, Lw3/t3;->n()I

    move-result v0

    return v0
.end method

.method final k()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lw3/t3;->w:I

    iget v1, p0, Lw3/t3;->q:I

    const/4 v2, -0x1

    if-ltz v1, :cond_0

    add-int/2addr v0, v2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1}, Lw3/t3;->c(I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_0
    iget v1, p0, Lw3/t3;->p:I

    sub-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lw3/t3;->p:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lw3/t3;->c(I)I

    move-result v1

    if-eq v1, v2, :cond_2

    invoke-static {v1}, Lw3/u2;->A0(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget v1, p0, Lw3/t3;->p:I

    add-int/2addr v0, v1

    :cond_3
    :goto_2
    iget v1, p0, Lw3/t3;->p:I

    invoke-direct {p0, v1, v0}, Lw3/t3;->V(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final l(I[I)Ljava/lang/String;
    .locals 7

    iget v0, p0, Lw3/t3;->x:I

    iget v1, p0, Lw3/t3;->n:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    iget p1, p0, Lw3/t3;->w:I

    if-le v0, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lez v0, :cond_3

    add-int/lit8 v4, p1, -0x1

    invoke-direct {p0, v4}, Lw3/t3;->c(I)I

    move-result v4

    invoke-static {v4}, Lw3/u2;->A0(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v3, 0xa

    if-ne v4, v3, :cond_1

    add-int/lit8 v3, p1, -0x2

    invoke-direct {p0, v3}, Lw3/t3;->c(I)I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p1, -0x1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-lez p1, :cond_5

    add-int/lit8 v4, p1, -0x1

    invoke-direct {p0, v4}, Lw3/t3;->c(I)I

    move-result v4

    invoke-static {v4}, Lw3/u2;->A0(I)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_2
    iget v4, p0, Lw3/t3;->r:I

    sub-int/2addr v4, v2

    iget v5, p0, Lw3/t3;->q:I

    const/4 v6, 0x1

    if-ltz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    add-int/2addr v4, v5

    aput v4, p2, v1

    aput v0, p2, v6

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lw3/t3;->k()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-direct {p0, p1, v3}, Lw3/t3;->V(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final m()I
    .locals 1

    iget v0, p0, Lw3/t3;->r:I

    return v0
.end method

.method n()I
    .locals 10

    iget v0, p0, Lw3/t3;->x:I

    iput v0, p0, Lw3/t3;->y:I

    const/4 v0, 0x0

    iput v0, p0, Lw3/t3;->k:I

    :cond_0
    :goto_0
    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v1

    const-string v2, "msg.XML.bad.form"

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_11

    iget-boolean v5, p0, Lw3/t3;->C:Z

    const/16 v6, 0x94

    const/16 v7, 0x2f

    const/16 v8, 0x7b

    const/4 v9, 0x1

    if-eqz v5, :cond_8

    const/16 v2, 0x9

    if-eq v1, v2, :cond_6

    const/16 v2, 0xa

    if-eq v1, v2, :cond_6

    const/16 v2, 0xd

    if-eq v1, v2, :cond_6

    const/16 v2, 0x20

    if-eq v1, v2, :cond_6

    const/16 v2, 0x22

    if-eq v1, v2, :cond_5

    const/16 v2, 0x27

    if-eq v1, v2, :cond_5

    const/16 v2, 0x3e

    if-eq v1, v7, :cond_4

    if-eq v1, v8, :cond_3

    const/16 v3, 0x3d

    invoke-direct {p0, v1}, Lw3/t3;->a(I)V

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Lw3/t3;->C:Z

    :goto_1
    iput-boolean v0, p0, Lw3/t3;->B:Z

    goto :goto_2

    :cond_2
    iput-boolean v9, p0, Lw3/t3;->B:Z

    goto :goto_2

    :cond_3
    invoke-direct {p0, v1}, Lw3/t3;->W(I)V

    invoke-direct {p0}, Lw3/t3;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lw3/t3;->c:Ljava/lang/String;

    return v6

    :cond_4
    invoke-direct {p0, v1}, Lw3/t3;->a(I)V

    invoke-direct {p0}, Lw3/t3;->J()I

    move-result v1

    if-ne v1, v2, :cond_7

    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v1

    invoke-direct {p0, v1}, Lw3/t3;->a(I)V

    iput-boolean v0, p0, Lw3/t3;->C:Z

    iget v1, p0, Lw3/t3;->D:I

    sub-int/2addr v1, v9

    iput v1, p0, Lw3/t3;->D:I

    goto :goto_2

    :cond_5
    invoke-direct {p0, v1}, Lw3/t3;->a(I)V

    invoke-direct {p0, v1}, Lw3/t3;->O(I)Z

    move-result v1

    if-nez v1, :cond_7

    return v4

    :cond_6
    invoke-direct {p0, v1}, Lw3/t3;->a(I)V

    :cond_7
    :goto_2
    iget-boolean v1, p0, Lw3/t3;->C:Z

    if-nez v1, :cond_0

    iget v1, p0, Lw3/t3;->D:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lw3/t3;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lw3/t3;->c:Ljava/lang/String;

    const/16 v0, 0x97

    return v0

    :cond_8
    const/16 v5, 0x3c

    if-eq v1, v5, :cond_9

    if-eq v1, v8, :cond_3

    invoke-direct {p0, v1}, Lw3/t3;->a(I)V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, v1}, Lw3/t3;->a(I)V

    invoke-direct {p0}, Lw3/t3;->J()I

    move-result v1

    const/16 v5, 0x21

    if-eq v1, v5, :cond_e

    if-eq v1, v7, :cond_b

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_a

    iput-boolean v9, p0, Lw3/t3;->C:Z

    iget v1, p0, Lw3/t3;->D:I

    add-int/2addr v1, v9

    :goto_3
    iput v1, p0, Lw3/t3;->D:I

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v1

    invoke-direct {p0, v1}, Lw3/t3;->a(I)V

    invoke-direct {p0}, Lw3/t3;->N()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_b
    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v1

    invoke-direct {p0, v1}, Lw3/t3;->a(I)V

    iget v1, p0, Lw3/t3;->D:I

    if-nez v1, :cond_d

    :cond_c
    :goto_4
    iput v0, p0, Lw3/t3;->k:I

    iput-object v3, p0, Lw3/t3;->c:Ljava/lang/String;

    iget-object v0, p0, Lw3/t3;->E:Lw3/m2;

    invoke-virtual {v0, v2}, Lw3/m2;->k(Ljava/lang/String;)V

    return v4

    :cond_d
    iput-boolean v9, p0, Lw3/t3;->C:Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_e
    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v1

    invoke-direct {p0, v1}, Lw3/t3;->a(I)V

    invoke-direct {p0}, Lw3/t3;->J()I

    move-result v1

    const/16 v5, 0x2d

    if-eq v1, v5, :cond_10

    const/16 v5, 0x5b

    if-eq v1, v5, :cond_f

    invoke-direct {p0}, Lw3/t3;->M()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_f
    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v1

    invoke-direct {p0, v1}, Lw3/t3;->a(I)V

    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v1

    const/16 v6, 0x43

    if-ne v1, v6, :cond_c

    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v1

    const/16 v7, 0x44

    if-ne v1, v7, :cond_c

    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v1

    const/16 v8, 0x41

    if-ne v1, v8, :cond_c

    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v1

    const/16 v9, 0x54

    if-ne v1, v9, :cond_c

    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v1

    if-ne v1, v8, :cond_c

    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v1

    if-ne v1, v5, :cond_c

    invoke-direct {p0, v6}, Lw3/t3;->a(I)V

    invoke-direct {p0, v7}, Lw3/t3;->a(I)V

    invoke-direct {p0, v8}, Lw3/t3;->a(I)V

    invoke-direct {p0, v9}, Lw3/t3;->a(I)V

    invoke-direct {p0, v8}, Lw3/t3;->a(I)V

    invoke-direct {p0, v5}, Lw3/t3;->a(I)V

    invoke-direct {p0}, Lw3/t3;->L()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_10
    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v1

    invoke-direct {p0, v1}, Lw3/t3;->a(I)V

    invoke-direct {p0}, Lw3/t3;->g()I

    move-result v1

    if-ne v1, v5, :cond_c

    invoke-direct {p0, v1}, Lw3/t3;->a(I)V

    invoke-direct {p0}, Lw3/t3;->Q()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_11
    iget v1, p0, Lw3/t3;->x:I

    iput v1, p0, Lw3/t3;->z:I

    goto/16 :goto_4
.end method

.method final o()D
    .locals 2

    iget-wide v0, p0, Lw3/t3;->d:D

    return-wide v0
.end method

.method final p()I
    .locals 2

    iget v0, p0, Lw3/t3;->w:I

    iget v1, p0, Lw3/t3;->p:I

    sub-int/2addr v0, v1

    iget v1, p0, Lw3/t3;->q:I

    if-ltz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method final q()C
    .locals 1

    iget v0, p0, Lw3/t3;->i:I

    int-to-char v0, v0

    return v0
.end method

.method final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw3/t3;->c:Ljava/lang/String;

    return-object v0
.end method

.method final t()I
    .locals 16

    move-object/from16 v0, p0

    :cond_0
    invoke-direct/range {p0 .. p0}, Lw3/t3;->g()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget v1, v0, Lw3/t3;->x:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lw3/t3;->y:I

    iput v1, v0, Lw3/t3;->z:I

    return v3

    :cond_1
    const/16 v4, 0xa

    const/4 v5, 0x1

    if-ne v1, v4, :cond_2

    iput-boolean v3, v0, Lw3/t3;->a:Z

    iget v1, v0, Lw3/t3;->x:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lw3/t3;->y:I

    iput v1, v0, Lw3/t3;->z:I

    return v5

    :cond_2
    invoke-static {v1}, Lw3/t3;->y(I)Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v6, 0x2d

    if-eq v1, v6, :cond_3

    iput-boolean v5, v0, Lw3/t3;->a:Z

    :cond_3
    iget v7, v0, Lw3/t3;->x:I

    add-int/lit8 v8, v7, -0x1

    iput v8, v0, Lw3/t3;->y:I

    iput v7, v0, Lw3/t3;->z:I

    const/16 v7, 0x40

    if-ne v1, v7, :cond_4

    const/16 v1, 0x96

    return v1

    :cond_4
    const/16 v7, 0x75

    const/16 v8, 0x5c

    if-ne v1, v8, :cond_6

    invoke-direct/range {p0 .. p0}, Lw3/t3;->g()I

    move-result v1

    if-ne v1, v7, :cond_5

    iput v3, v0, Lw3/t3;->k:I

    const/4 v9, 0x1

    const/4 v10, 0x1

    goto :goto_1

    :cond_5
    invoke-direct {v0, v1}, Lw3/t3;->W(I)V

    const/16 v1, 0x5c

    const/4 v9, 0x0

    goto :goto_0

    :cond_6
    int-to-char v9, v1

    invoke-static {v9}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v9

    if-eqz v9, :cond_7

    iput v3, v0, Lw3/t3;->k:I

    invoke-direct {v0, v1}, Lw3/t3;->a(I)V

    :cond_7
    :goto_0
    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x4

    const/16 v12, 0x27

    const/16 v13, 0xc8

    if-eqz v9, :cond_17

    move v1, v10

    :goto_2
    if-eqz v10, :cond_b

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_3
    if-eq v4, v11, :cond_9

    invoke-direct/range {p0 .. p0}, Lw3/t3;->g()I

    move-result v9

    invoke-static {v9, v6}, Lw3/v0;->h(II)I

    move-result v6

    if-gez v6, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    if-gez v6, :cond_a

    iget-object v1, v0, Lw3/t3;->E:Lw3/m2;

    const-string v3, "msg.invalid.escape"

    invoke-virtual {v1, v3}, Lw3/m2;->k(Ljava/lang/String;)V

    return v2

    :cond_a
    invoke-direct {v0, v6}, Lw3/t3;->a(I)V

    const/4 v10, 0x0

    goto :goto_2

    :cond_b
    invoke-direct/range {p0 .. p0}, Lw3/t3;->g()I

    move-result v4

    if-ne v4, v8, :cond_d

    invoke-direct/range {p0 .. p0}, Lw3/t3;->g()I

    move-result v1

    if-ne v1, v7, :cond_c

    const/4 v1, 0x1

    const/4 v10, 0x1

    goto :goto_2

    :cond_c
    iget-object v3, v0, Lw3/t3;->E:Lw3/m2;

    const-string v4, "msg.illegal.character"

    invoke-virtual {v3, v4, v1}, Lw3/m2;->l(Ljava/lang/String;I)V

    return v2

    :cond_d
    if-eq v4, v2, :cond_f

    const v6, 0xfeff

    if-eq v4, v6, :cond_f

    int-to-char v6, v4

    invoke-static {v6}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_5

    :cond_e
    invoke-direct {v0, v4}, Lw3/t3;->a(I)V

    goto :goto_2

    :cond_f
    :goto_5
    invoke-direct {v0, v4}, Lw3/t3;->W(I)V

    invoke-direct/range {p0 .. p0}, Lw3/t3;->s()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_15

    iget-object v1, v0, Lw3/t3;->E:Lw3/m2;

    iget-object v1, v1, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v1}, Lw3/j;->c()I

    move-result v1

    iget-object v3, v0, Lw3/t3;->E:Lw3/m2;

    invoke-virtual {v3}, Lw3/m2;->G0()Z

    move-result v3

    invoke-static {v2, v1, v3}, Lw3/t3;->S(Ljava/lang/String;IZ)I

    move-result v1

    if-eqz v1, :cond_16

    const/16 v3, 0x9c

    if-eq v1, v3, :cond_10

    const/16 v3, 0x49

    if-ne v1, v3, :cond_12

    :cond_10
    iget-object v3, v0, Lw3/t3;->E:Lw3/m2;

    iget-object v3, v3, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v3}, Lw3/j;->c()I

    move-result v3

    const/16 v4, 0xaa

    if-ge v3, v4, :cond_12

    const/16 v3, 0x9c

    if-ne v1, v3, :cond_11

    const-string v1, "let"

    goto :goto_6

    :cond_11
    const-string v1, "yield"

    :goto_6
    iput-object v1, v0, Lw3/t3;->c:Ljava/lang/String;

    const/16 v1, 0x27

    :cond_12
    iget-object v3, v0, Lw3/t3;->l:Lw3/k2;

    invoke-virtual {v3, v2}, Lw3/k2;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lw3/t3;->c:Ljava/lang/String;

    const/16 v3, 0x82

    if-eq v1, v3, :cond_13

    return v1

    :cond_13
    iget-object v3, v0, Lw3/t3;->E:Lw3/m2;

    iget-object v3, v3, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v3}, Lw3/j;->c()I

    move-result v3

    if-lt v3, v13, :cond_14

    return v1

    :cond_14
    iget-object v3, v0, Lw3/t3;->E:Lw3/m2;

    iget-object v3, v3, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v3}, Lw3/j;->l()Z

    move-result v3

    if-nez v3, :cond_16

    return v1

    :cond_15
    iget-object v1, v0, Lw3/t3;->E:Lw3/m2;

    iget-object v1, v1, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v1}, Lw3/j;->c()I

    move-result v1

    iget-object v3, v0, Lw3/t3;->E:Lw3/m2;

    invoke-virtual {v3}, Lw3/m2;->G0()Z

    move-result v3

    invoke-static {v2, v1, v3}, Lw3/t3;->z(Ljava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {v2}, Lw3/t3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_16
    iget-object v1, v0, Lw3/t3;->l:Lw3/k2;

    invoke-virtual {v1, v2}, Lw3/k2;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lw3/t3;->c:Ljava/lang/String;

    return v12

    :cond_17
    invoke-static {v1}, Lw3/t3;->w(I)Z

    move-result v9

    const/16 v10, 0x10

    const/4 v14, 0x2

    const/16 v7, 0x2e

    const/16 v15, 0x30

    if-nez v9, :cond_59

    if-ne v1, v7, :cond_18

    invoke-direct/range {p0 .. p0}, Lw3/t3;->J()I

    move-result v9

    invoke-static {v9}, Lw3/t3;->w(I)Z

    move-result v9

    if-eqz v9, :cond_18

    goto/16 :goto_13

    :cond_18
    const/16 v9, 0x22

    if-eq v1, v9, :cond_49

    if-eq v1, v12, :cond_49

    const/16 v9, 0x60

    if-ne v1, v9, :cond_19

    goto/16 :goto_b

    :cond_19
    const/16 v9, 0x21

    const/16 v12, 0x3d

    if-eq v1, v9, :cond_46

    const/16 v9, 0x5b

    if-eq v1, v9, :cond_45

    const/16 v9, 0x25

    if-eq v1, v9, :cond_43

    const/16 v9, 0x26

    if-eq v1, v9, :cond_40

    const/16 v9, 0x5d

    if-eq v1, v9, :cond_3f

    const/16 v9, 0x5e

    if-eq v1, v9, :cond_3d

    const/16 v4, 0x2a

    const/16 v9, 0x3e

    const/16 v15, 0xa4

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    iget-object v3, v0, Lw3/t3;->E:Lw3/m2;

    const-string v4, "msg.illegal.character"

    invoke-virtual {v3, v4, v1}, Lw3/m2;->l(Ljava/lang/String;I)V

    return v2

    :pswitch_0
    const/16 v1, 0x1b

    return v1

    :pswitch_1
    const/16 v1, 0x58

    return v1

    :pswitch_2
    const/16 v1, 0x7c

    invoke-direct {v0, v1}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/16 v1, 0x6b

    return v1

    :cond_1a
    invoke-direct {v0, v12}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/16 v1, 0x5d

    return v1

    :cond_1b
    const/16 v1, 0x9

    return v1

    :pswitch_3
    const/16 v1, 0x57

    return v1

    :pswitch_4
    const/16 v1, 0x69

    return v1

    :pswitch_5
    invoke-direct {v0, v9}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-direct {v0, v9}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-direct {v0, v12}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/16 v1, 0x62

    return v1

    :cond_1c
    const/16 v1, 0x14

    return v1

    :cond_1d
    invoke-direct {v0, v12}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/16 v1, 0x61

    return v1

    :cond_1e
    const/16 v1, 0x13

    return v1

    :cond_1f
    invoke-direct {v0, v12}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_20

    const/16 v1, 0x11

    return v1

    :cond_20
    return v10

    :pswitch_6
    invoke-direct {v0, v12}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-direct {v0, v12}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_21

    return v7

    :cond_21
    const/16 v1, 0xc

    return v1

    :cond_22
    invoke-direct {v0, v9}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v1, 0xa7

    return v1

    :cond_23
    return v8

    :pswitch_7
    const/16 v1, 0x21

    invoke-direct {v0, v1}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-direct {v0, v6}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-direct {v0, v6}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_24

    iget v1, v0, Lw3/t3;->x:I

    sub-int/2addr v1, v11

    iput v1, v0, Lw3/t3;->y:I

    invoke-direct/range {p0 .. p0}, Lw3/t3;->R()V

    sget-object v1, Lw3/s3$a;->d:Lw3/s3$a;

    iput-object v1, v0, Lw3/t3;->A:Lw3/s3$a;

    return v15

    :cond_24
    invoke-direct {v0, v6}, Lw3/t3;->X(I)V

    :cond_25
    const/16 v1, 0x21

    invoke-direct {v0, v1}, Lw3/t3;->X(I)V

    :cond_26
    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-direct {v0, v12}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_27

    const/16 v1, 0x60

    return v1

    :cond_27
    const/16 v1, 0x12

    return v1

    :cond_28
    invoke-direct {v0, v12}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_29

    const/16 v1, 0xf

    return v1

    :cond_29
    const/16 v1, 0xe

    return v1

    :pswitch_8
    const/16 v1, 0x54

    return v1

    :pswitch_9
    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/16 v1, 0x93

    return v1

    :cond_2a
    const/16 v1, 0x6a

    return v1

    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lw3/t3;->G()V

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget v1, v0, Lw3/t3;->x:I

    sub-int/2addr v1, v14

    iput v1, v0, Lw3/t3;->y:I

    invoke-direct/range {p0 .. p0}, Lw3/t3;->R()V

    sget-object v1, Lw3/s3$a;->a:Lw3/s3$a;

    iput-object v1, v0, Lw3/t3;->A:Lw3/s3$a;

    return v15

    :cond_2b
    invoke-direct {v0, v4}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_31

    iget v1, v0, Lw3/t3;->x:I

    sub-int/2addr v1, v14

    iput v1, v0, Lw3/t3;->y:I

    invoke-direct {v0, v4}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    sget-object v1, Lw3/s3$a;->c:Lw3/s3$a;

    iput-object v1, v0, Lw3/t3;->A:Lw3/s3$a;

    :goto_7
    const/4 v1, 0x1

    goto :goto_9

    :cond_2c
    sget-object v1, Lw3/s3$a;->b:Lw3/s3$a;

    iput-object v1, v0, Lw3/t3;->A:Lw3/s3$a;

    :goto_8
    const/4 v1, 0x0

    :cond_2d
    :goto_9
    invoke-direct/range {p0 .. p0}, Lw3/t3;->g()I

    move-result v6

    if-ne v6, v2, :cond_2e

    iget v1, v0, Lw3/t3;->x:I

    sub-int/2addr v1, v5

    iput v1, v0, Lw3/t3;->z:I

    iget-object v1, v0, Lw3/t3;->E:Lw3/m2;

    const-string v2, "msg.unterminated.comment"

    invoke-virtual {v1, v2}, Lw3/m2;->k(Ljava/lang/String;)V

    return v15

    :cond_2e
    if-ne v6, v4, :cond_2f

    goto :goto_7

    :cond_2f
    const/16 v7, 0x2f

    if-ne v6, v7, :cond_30

    if-eqz v1, :cond_2d

    iget v1, v0, Lw3/t3;->x:I

    iput v1, v0, Lw3/t3;->z:I

    return v15

    :cond_30
    iget v1, v0, Lw3/t3;->x:I

    iput v1, v0, Lw3/t3;->z:I

    goto :goto_8

    :cond_31
    invoke-direct {v0, v12}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_32

    const/16 v1, 0x66

    return v1

    :cond_32
    const/16 v1, 0x18

    return v1

    :pswitch_b
    invoke-direct {v0, v7}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_33

    const/16 v1, 0x92

    return v1

    :cond_33
    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_34

    const/16 v1, 0x95

    return v1

    :cond_34
    const/16 v1, 0x6f

    return v1

    :pswitch_c
    invoke-direct {v0, v12}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x64

    goto :goto_a

    :cond_35
    invoke-direct {v0, v6}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-boolean v1, v0, Lw3/t3;->a:Z

    if-nez v1, :cond_36

    invoke-direct {v0, v9}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v1, "--"

    invoke-direct {v0, v1}, Lw3/t3;->H(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lw3/t3;->R()V

    sget-object v1, Lw3/s3$a;->d:Lw3/s3$a;

    iput-object v1, v0, Lw3/t3;->A:Lw3/s3$a;

    return v15

    :cond_36
    const/16 v1, 0x6e

    goto :goto_a

    :cond_37
    const/16 v1, 0x16

    :goto_a
    iput-boolean v5, v0, Lw3/t3;->a:Z

    return v1

    :pswitch_d
    const/16 v1, 0x5b

    return v1

    :pswitch_e
    invoke-direct {v0, v12}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_38

    const/16 v1, 0x63

    return v1

    :cond_38
    const/16 v1, 0x2b

    invoke-direct {v0, v1}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_39

    const/16 v1, 0x6d

    return v1

    :cond_39
    const/16 v1, 0x15

    return v1

    :pswitch_f
    iget-object v1, v0, Lw3/t3;->E:Lw3/m2;

    iget-object v1, v1, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v1}, Lw3/j;->c()I

    move-result v1

    if-lt v1, v13, :cond_3b

    invoke-direct {v0, v4}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-direct {v0, v12}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    const/16 v1, 0x68

    return v1

    :cond_3a
    const/16 v1, 0x4b

    return v1

    :cond_3b
    invoke-direct {v0, v12}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/16 v1, 0x65

    return v1

    :cond_3c
    const/16 v1, 0x17

    return v1

    :pswitch_10
    const/16 v1, 0x5a

    return v1

    :pswitch_11
    const/16 v1, 0x59

    return v1

    :cond_3d
    invoke-direct {v0, v12}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    const/16 v1, 0x5e

    return v1

    :cond_3e
    return v4

    :cond_3f
    const/16 v1, 0x56

    return v1

    :cond_40
    const/16 v1, 0x26

    invoke-direct {v0, v1}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_41

    const/16 v1, 0x6c

    return v1

    :cond_41
    invoke-direct {v0, v12}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_42

    const/16 v1, 0x5f

    return v1

    :cond_42
    const/16 v1, 0xb

    return v1

    :cond_43
    invoke-direct {v0, v12}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_44

    const/16 v1, 0x67

    return v1

    :cond_44
    const/16 v1, 0x19

    return v1

    :cond_45
    const/16 v1, 0x55

    return v1

    :cond_46
    invoke-direct {v0, v12}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-direct {v0, v12}, Lw3/t3;->I(I)Z

    move-result v1

    if-eqz v1, :cond_47

    const/16 v1, 0x2f

    return v1

    :cond_47
    const/16 v1, 0xd

    return v1

    :cond_48
    const/16 v1, 0x1a

    return v1

    :cond_49
    :goto_b
    iput v1, v0, Lw3/t3;->i:I

    iput v3, v0, Lw3/t3;->k:I

    :goto_c
    invoke-direct {v0, v3}, Lw3/t3;->h(Z)I

    move-result v1

    :goto_d
    iget v5, v0, Lw3/t3;->i:I

    if-eq v1, v5, :cond_58

    if-eq v1, v4, :cond_57

    if-ne v1, v2, :cond_4a

    goto/16 :goto_12

    :cond_4a
    if-ne v1, v8, :cond_56

    invoke-direct/range {p0 .. p0}, Lw3/t3;->g()I

    move-result v1

    if-eq v1, v4, :cond_55

    const/16 v5, 0x62

    if-eq v1, v5, :cond_54

    const/16 v5, 0x66

    if-eq v1, v5, :cond_53

    const/16 v5, 0x6e

    if-eq v1, v5, :cond_52

    const/16 v5, 0x72

    if-eq v1, v5, :cond_51

    const/16 v5, 0x78

    if-eq v1, v5, :cond_4f

    packed-switch v1, :pswitch_data_3

    if-gt v15, v1, :cond_56

    const/16 v5, 0x38

    if-ge v1, v5, :cond_56

    add-int/lit8 v1, v1, -0x30

    invoke-direct/range {p0 .. p0}, Lw3/t3;->g()I

    move-result v6

    if-gt v15, v6, :cond_4b

    if-ge v6, v5, :cond_4b

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v6

    sub-int/2addr v1, v15

    invoke-direct/range {p0 .. p0}, Lw3/t3;->g()I

    move-result v6

    if-gt v15, v6, :cond_4b

    if-ge v6, v5, :cond_4b

    const/16 v5, 0x1f

    if-gt v1, v5, :cond_4b

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v6

    sub-int/2addr v1, v15

    invoke-direct/range {p0 .. p0}, Lw3/t3;->g()I

    move-result v6

    :cond_4b
    invoke-direct {v0, v6}, Lw3/t3;->W(I)V

    goto/16 :goto_10

    :pswitch_12
    const/16 v1, 0xb

    goto/16 :goto_10

    :pswitch_13
    iget v1, v0, Lw3/t3;->k:I

    const/16 v5, 0x75

    invoke-direct {v0, v5}, Lw3/t3;->a(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_e
    if-eq v7, v11, :cond_4d

    invoke-direct/range {p0 .. p0}, Lw3/t3;->g()I

    move-result v9

    invoke-static {v9, v6}, Lw3/v0;->h(II)I

    move-result v6

    if-gez v6, :cond_4c

    goto :goto_f

    :cond_4c
    invoke-direct {v0, v9}, Lw3/t3;->a(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_4d
    iput v1, v0, Lw3/t3;->k:I

    :cond_4e
    move v1, v6

    goto :goto_11

    :pswitch_14
    const/16 v5, 0x75

    const/16 v1, 0x9

    goto :goto_11

    :cond_4f
    const/16 v5, 0x75

    invoke-direct/range {p0 .. p0}, Lw3/t3;->g()I

    move-result v1

    invoke-static {v1, v3}, Lw3/v0;->h(II)I

    move-result v6

    const/16 v7, 0x78

    if-gez v6, :cond_50

    invoke-direct {v0, v7}, Lw3/t3;->a(I)V

    goto/16 :goto_d

    :cond_50
    invoke-direct/range {p0 .. p0}, Lw3/t3;->g()I

    move-result v9

    invoke-static {v9, v6}, Lw3/v0;->h(II)I

    move-result v6

    if-gez v6, :cond_4e

    invoke-direct {v0, v7}, Lw3/t3;->a(I)V

    invoke-direct {v0, v1}, Lw3/t3;->a(I)V

    :goto_f
    move v1, v9

    goto/16 :goto_d

    :cond_51
    const/16 v5, 0x75

    const/16 v1, 0xd

    goto :goto_11

    :cond_52
    const/16 v5, 0x75

    const/16 v1, 0xa

    goto :goto_11

    :cond_53
    const/16 v5, 0x75

    const/16 v1, 0xc

    goto :goto_11

    :cond_54
    const/16 v5, 0x75

    const/16 v1, 0x8

    goto :goto_11

    :cond_55
    const/16 v5, 0x75

    invoke-direct/range {p0 .. p0}, Lw3/t3;->g()I

    move-result v1

    goto/16 :goto_d

    :cond_56
    :goto_10
    const/16 v5, 0x75

    :goto_11
    invoke-direct {v0, v1}, Lw3/t3;->a(I)V

    goto/16 :goto_c

    :cond_57
    :goto_12
    invoke-direct {v0, v1}, Lw3/t3;->W(I)V

    iget v1, v0, Lw3/t3;->x:I

    iput v1, v0, Lw3/t3;->z:I

    iget-object v1, v0, Lw3/t3;->E:Lw3/m2;

    const-string v3, "msg.unterminated.string.lit"

    invoke-virtual {v1, v3}, Lw3/m2;->k(Ljava/lang/String;)V

    return v2

    :cond_58
    invoke-direct/range {p0 .. p0}, Lw3/t3;->s()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lw3/t3;->l:Lw3/k2;

    invoke-virtual {v2, v1}, Lw3/k2;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lw3/t3;->c:Ljava/lang/String;

    const/16 v1, 0x29

    return v1

    :cond_59
    :goto_13
    iput v3, v0, Lw3/t3;->k:I

    iput-boolean v3, v0, Lw3/t3;->e:Z

    iput-boolean v3, v0, Lw3/t3;->g:Z

    iput-boolean v3, v0, Lw3/t3;->f:Z

    iput-boolean v3, v0, Lw3/t3;->h:Z

    iget-object v8, v0, Lw3/t3;->E:Lw3/m2;

    iget-object v8, v8, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v8}, Lw3/j;->c()I

    move-result v8

    if-lt v8, v13, :cond_5a

    const/4 v8, 0x1

    goto :goto_14

    :cond_5a
    const/4 v8, 0x0

    :goto_14
    if-ne v1, v15, :cond_62

    invoke-direct/range {p0 .. p0}, Lw3/t3;->g()I

    move-result v1

    const/16 v9, 0x78

    if-eq v1, v9, :cond_61

    const/16 v9, 0x58

    if-ne v1, v9, :cond_5b

    goto :goto_16

    :cond_5b
    if-eqz v8, :cond_5d

    const/16 v9, 0x6f

    if-eq v1, v9, :cond_5c

    const/16 v9, 0x4f

    if-ne v1, v9, :cond_5d

    :cond_5c
    iput-boolean v5, v0, Lw3/t3;->g:Z

    invoke-direct/range {p0 .. p0}, Lw3/t3;->g()I

    move-result v1

    :goto_15
    const/16 v8, 0x8

    goto :goto_18

    :cond_5d
    if-eqz v8, :cond_5f

    const/16 v8, 0x62

    if-eq v1, v8, :cond_5e

    const/16 v8, 0x42

    if-ne v1, v8, :cond_5f

    :cond_5e
    iput-boolean v5, v0, Lw3/t3;->e:Z

    invoke-direct/range {p0 .. p0}, Lw3/t3;->g()I

    move-result v1

    const/4 v8, 0x2

    goto :goto_18

    :cond_5f
    invoke-static {v1}, Lw3/t3;->w(I)Z

    move-result v8

    if-eqz v8, :cond_60

    iput-boolean v5, v0, Lw3/t3;->f:Z

    goto :goto_15

    :cond_60
    invoke-direct {v0, v15}, Lw3/t3;->a(I)V

    goto :goto_17

    :cond_61
    :goto_16
    iput-boolean v5, v0, Lw3/t3;->h:Z

    invoke-direct/range {p0 .. p0}, Lw3/t3;->g()I

    move-result v1

    const/16 v8, 0x10

    goto :goto_18

    :cond_62
    :goto_17
    const/16 v8, 0xa

    :goto_18
    const-string v9, "msg.caught.nfe"

    if-ne v8, v10, :cond_63

    const/4 v10, 0x1

    :goto_19
    invoke-static {v1, v3}, Lw3/v0;->h(II)I

    move-result v11

    if-ltz v11, :cond_68

    invoke-direct {v0, v1}, Lw3/t3;->a(I)V

    invoke-direct/range {p0 .. p0}, Lw3/t3;->g()I

    move-result v1

    const/4 v10, 0x0

    goto :goto_19

    :cond_63
    const/4 v10, 0x1

    :goto_1a
    if-gt v15, v1, :cond_68

    const/16 v11, 0x39

    if-gt v1, v11, :cond_68

    const/16 v11, 0x8

    const/16 v12, 0x38

    if-ne v8, v11, :cond_66

    if-lt v1, v12, :cond_66

    iget-boolean v8, v0, Lw3/t3;->f:Z

    if-eqz v8, :cond_65

    iget-object v8, v0, Lw3/t3;->E:Lw3/m2;

    if-ne v1, v12, :cond_64

    const-string v10, "8"

    goto :goto_1b

    :cond_64
    const-string v10, "9"

    :goto_1b
    const-string v13, "msg.bad.octal.literal"

    invoke-virtual {v8, v13, v10}, Lw3/m2;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0xa

    goto :goto_1c

    :cond_65
    iget-object v1, v0, Lw3/t3;->E:Lw3/m2;

    invoke-virtual {v1, v9}, Lw3/m2;->k(Ljava/lang/String;)V

    return v2

    :cond_66
    if-ne v8, v14, :cond_67

    const/16 v10, 0x32

    if-lt v1, v10, :cond_67

    iget-object v1, v0, Lw3/t3;->E:Lw3/m2;

    invoke-virtual {v1, v9}, Lw3/m2;->k(Ljava/lang/String;)V

    return v2

    :cond_67
    :goto_1c
    invoke-direct {v0, v1}, Lw3/t3;->a(I)V

    invoke-direct/range {p0 .. p0}, Lw3/t3;->g()I

    move-result v1

    const/4 v10, 0x0

    goto :goto_1a

    :cond_68
    if-eqz v10, :cond_6a

    iget-boolean v10, v0, Lw3/t3;->e:Z

    if-nez v10, :cond_69

    iget-boolean v10, v0, Lw3/t3;->g:Z

    if-nez v10, :cond_69

    iget-boolean v10, v0, Lw3/t3;->h:Z

    if-eqz v10, :cond_6a

    :cond_69
    iget-object v1, v0, Lw3/t3;->E:Lw3/m2;

    invoke-virtual {v1, v9}, Lw3/m2;->k(Ljava/lang/String;)V

    return v2

    :cond_6a
    if-ne v8, v4, :cond_73

    if-eq v1, v7, :cond_6b

    const/16 v10, 0x65

    if-eq v1, v10, :cond_6b

    const/16 v10, 0x45

    if-ne v1, v10, :cond_73

    :cond_6b
    if-ne v1, v7, :cond_6d

    :cond_6c
    invoke-direct {v0, v1}, Lw3/t3;->a(I)V

    invoke-direct/range {p0 .. p0}, Lw3/t3;->g()I

    move-result v1

    invoke-static {v1}, Lw3/t3;->w(I)Z

    move-result v5

    if-nez v5, :cond_6c

    :cond_6d
    const/16 v5, 0x65

    if-eq v1, v5, :cond_6f

    const/16 v5, 0x45

    if-ne v1, v5, :cond_6e

    goto :goto_1e

    :cond_6e
    :goto_1d
    const/4 v5, 0x0

    goto :goto_1f

    :cond_6f
    :goto_1e
    invoke-direct {v0, v1}, Lw3/t3;->a(I)V

    invoke-direct/range {p0 .. p0}, Lw3/t3;->g()I

    move-result v1

    const/16 v5, 0x2b

    if-eq v1, v5, :cond_70

    if-ne v1, v6, :cond_71

    :cond_70
    invoke-direct {v0, v1}, Lw3/t3;->a(I)V

    invoke-direct/range {p0 .. p0}, Lw3/t3;->g()I

    move-result v1

    :cond_71
    invoke-static {v1}, Lw3/t3;->w(I)Z

    move-result v5

    if-nez v5, :cond_72

    iget-object v1, v0, Lw3/t3;->E:Lw3/m2;

    const-string v3, "msg.missing.exponent"

    invoke-virtual {v1, v3}, Lw3/m2;->k(Ljava/lang/String;)V

    return v2

    :cond_72
    invoke-direct {v0, v1}, Lw3/t3;->a(I)V

    invoke-direct/range {p0 .. p0}, Lw3/t3;->g()I

    move-result v1

    invoke-static {v1}, Lw3/t3;->w(I)Z

    move-result v5

    if-nez v5, :cond_72

    goto :goto_1d

    :cond_73
    :goto_1f
    invoke-direct {v0, v1}, Lw3/t3;->W(I)V

    invoke-direct/range {p0 .. p0}, Lw3/t3;->s()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lw3/t3;->c:Ljava/lang/String;

    if-ne v8, v4, :cond_74

    if-nez v5, :cond_74

    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_20

    :catch_0
    iget-object v1, v0, Lw3/t3;->E:Lw3/m2;

    invoke-virtual {v1, v9}, Lw3/m2;->k(Ljava/lang/String;)V

    return v2

    :cond_74
    invoke-static {v1, v3, v8}, Lw3/u2;->K1(Ljava/lang/String;II)D

    move-result-wide v1

    :goto_20
    iput-wide v1, v0, Lw3/t3;->d:D

    const/16 v1, 0x28

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x74
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public u()I
    .locals 2

    iget v0, p0, Lw3/t3;->z:I

    iget v1, p0, Lw3/t3;->y:I

    sub-int/2addr v0, v1

    return v0
.end method
