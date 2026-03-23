.class public Lj2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj2/g$b;,
        Lj2/g$a;,
        Lj2/g$d;,
        Lj2/g$c;
    }
.end annotation


# static fields
.field private static h:Lj2/g;


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private b:Lj2/g$c;

.field private c:Landroid/os/Handler;

.field private d:Lj2/g$a;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lj2/g$d;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lj2/g;->c:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lj2/g;->f:Ljava/util/Set;

    iput-object p1, p0, Lj2/g;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    sput-object p0, Lj2/g;->h:Lj2/g;

    return-void
.end method

.method static bridge synthetic a(Lj2/g;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lj2/g;->f:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic b(Lj2/g;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lj2/g;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic c(Lj2/g;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lj2/g;->c:Landroid/os/Handler;

    return-object p0
.end method

.method public static d()Lj2/g;
    .locals 1

    sget-object v0, Lj2/g;->h:Lj2/g;

    return-object v0
.end method


# virtual methods
.method public e()V
    .locals 1

    iget-object v0, p0, Lj2/g;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lj2/g;->f(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lj2/g;->e:Ljava/lang/String;

    iget-object v0, p0, Lj2/g;->b:Lj2/g$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj2/g$c;->g()V

    iput-object v1, p0, Lj2/g;->b:Lj2/g$c;

    :cond_0
    iget-object v0, p0, Lj2/g;->g:Lj2/g$d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lj2/g$d;->j()V

    iput-object v1, p0, Lj2/g;->g:Lj2/g$d;

    :cond_1
    iget-object v0, p0, Lj2/g;->d:Lj2/g$a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lj2/g$a;->a()V

    iput-object v1, p0, Lj2/g;->d:Lj2/g$a;

    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v1, "clock"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lj2/g$c;

    invoke-direct {v1, p0, v0}, Lj2/g$c;-><init>(Lj2/g;Ljava/io/File;)V

    iput-object v1, p0, Lj2/g;->b:Lj2/g$c;

    :cond_3
    new-instance v0, Ljava/io/File;

    const-string v1, "timer"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lj2/g$d;

    invoke-direct {v1, p0, v0}, Lj2/g$d;-><init>(Lj2/g;Ljava/io/File;)V

    iput-object v1, p0, Lj2/g;->g:Lj2/g$d;

    :cond_4
    new-instance v0, Ljava/io/File;

    const-string v1, "effect"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lj2/g$a;

    invoke-direct {p1, p0, v0}, Lj2/g$a;-><init>(Lj2/g;Ljava/io/File;)V

    iput-object p1, p0, Lj2/g;->d:Lj2/g$a;

    :cond_5
    iget-object p1, p0, Lj2/g;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v0, p0, Lj2/g;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07003e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lj2/g;->f:Ljava/util/Set;

    return-void
.end method

.method public g()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lj2/g;->h:Lj2/g;

    iput-object v0, p0, Lj2/g;->e:Ljava/lang/String;

    iget-object v1, p0, Lj2/g;->b:Lj2/g$c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lj2/g$c;->g()V

    iput-object v0, p0, Lj2/g;->b:Lj2/g$c;

    :cond_0
    iget-object v1, p0, Lj2/g;->g:Lj2/g$d;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lj2/g$d;->j()V

    iput-object v0, p0, Lj2/g;->g:Lj2/g$d;

    :cond_1
    iget-object v1, p0, Lj2/g;->d:Lj2/g$a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lj2/g$a;->a()V

    iput-object v0, p0, Lj2/g;->d:Lj2/g$a;

    :cond_2
    return-void
.end method

.method public h(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lj2/g;->f:Ljava/util/Set;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lj2/g;->d:Lj2/g$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lj2/g$a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public j()Z
    .locals 4

    iget-object v0, p0, Lj2/g;->b:Lj2/g$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v0, p0, Lj2/g;->b:Lj2/g$c;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lj2/g$c;->f(II)Z

    move-result v0

    return v0
.end method

.method public k(II)Z
    .locals 1

    iget-object v0, p0, Lj2/g;->g:Lj2/g$d;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lj2/g$d;->f(II)Z

    move-result p1

    return p1
.end method

.method public l(JJLjava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lj2/g;->g:Lj2/g$d;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lj2/g$d;->g(JJLjava/util/Set;)Z

    move-result p1

    return p1
.end method
