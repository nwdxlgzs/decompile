.class public Lcom/tencent/wstt/gt/plugin/screenlock/ScreenWakeLock;
.super Ljava/lang/Object;
.source "ScreenWakeLock.java"


# static fields
.field public static flag:Z

.field private static wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/wstt/gt/plugin/screenlock/ScreenWakeLock;->wl:Landroid/os/PowerManager$WakeLock;

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/wstt/gt/plugin/screenlock/ScreenWakeLock;->flag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toggle(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    sget-object v1, Lcom/tencent/wstt/gt/plugin/screenlock/ScreenWakeLock;->wl:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 38
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    check-cast v0, Landroid/os/PowerManager;

    .line 39
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x1000000a

    .line 41
    const-string v2, "GTScreenWakeLock"

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/tencent/wstt/gt/plugin/screenlock/ScreenWakeLock;->wl:Landroid/os/PowerManager$WakeLock;

    .line 44
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    sget-boolean v1, Lcom/tencent/wstt/gt/plugin/screenlock/ScreenWakeLock;->flag:Z

    if-nez v1, :cond_1

    .line 45
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/wstt/gt/plugin/screenlock/ScreenWakeLock;->flag:Z

    .line 46
    sget-object v1, Lcom/tencent/wstt/gt/plugin/screenlock/ScreenWakeLock;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tencent/wstt/gt/plugin/screenlock/ScreenWakeLock;->flag:Z

    .line 49
    sget-object v1, Lcom/tencent/wstt/gt/plugin/screenlock/ScreenWakeLock;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method