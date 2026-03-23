.class public final Ly2/z$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/z$c$a;
    }
.end annotation


# static fields
.field public static final c:Ly2/z$c$a;


# instance fields
.field private final a:Ly2/v;

.field private final b:Ly2/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly2/z$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly2/z$c$a;-><init>(Lt2/d;)V

    sput-object v0, Ly2/z$c;->c:Ly2/z$c$a;

    return-void
.end method

.method private constructor <init>(Ly2/v;Ly2/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly2/z$c;->a:Ly2/v;

    iput-object p2, p0, Ly2/z$c;->b:Ly2/b0;

    return-void
.end method

.method public synthetic constructor <init>(Ly2/v;Ly2/b0;Lt2/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ly2/z$c;-><init>(Ly2/v;Ly2/b0;)V

    return-void
.end method


# virtual methods
.method public final a()Ly2/b0;
    .locals 1

    iget-object v0, p0, Ly2/z$c;->b:Ly2/b0;

    return-object v0
.end method

.method public final b()Ly2/v;
    .locals 1

    iget-object v0, p0, Ly2/z$c;->a:Ly2/v;

    return-object v0
.end method
