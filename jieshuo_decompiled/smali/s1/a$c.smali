.class Ls1/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/content/pm/ApplicationInfo;

.field public b:I

.field public c:Z

.field public d:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ls1/a$c;->b:I

    iput-boolean v0, p0, Ls1/a$c;->c:Z

    iput-boolean v0, p0, Ls1/a$c;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Ls1/a$a;)V
    .locals 0

    invoke-direct {p0}, Ls1/a$c;-><init>()V

    return-void
.end method
